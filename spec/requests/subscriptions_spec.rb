require 'rails_helper'

RSpec.describe "Subscriptions API", type: :request do

  describe "GET /subscriptions" do
  
    context "happy path: when a list of subscriptions exist" do
      let!(:subscriptions) { create_list(:subscription, 3) }
      it "returns all subscriptions" do
        get "/subscriptions"
  
        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)["data"].size).to eq(3)
      end
    end

    context "sad path: when no subscriptions exist" do
      it "returns an empty array" do
        get "/subscriptions"

        expect(response).to have_http_status(:ok)
        json = JSON.parse(response.body)
        expect(json["data"]).to eq([])
      end
    end
  end

  describe "GET /subscriptions/:id" do
    let!(:subscription) { create(:subscription) }
    let(:subscription_id) { subscription.id }

    context "happy path: when the subscription matching the id exists" do
      it "returns the subscription" do
        get "/subscriptions/#{subscription_id}"

        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)["data"]["id"]).to eq(subscription_id.to_s)
      end
    end

    context "sad path: when the subscription matching the id does not exist" do
      it "returns a 404 Not Found error" do
        get "/subscriptions/999999"

        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe "PATCH /subscriptions/:id" do
    let!(:subscription) { create(:subscription) }
    let(:subscription_id) { subscription.id }

    let(:update_params) do
      { subscription: { price: 10.00 } }
    end

    it "happy path: updates the subscription" do
      patch "/subscriptions/#{subscription_id}", params: update_params

      expect(response).to have_http_status(:ok)
      expect(Subscription.find(subscription_id).price).to eq(10.00)
    end

    context "sad path: when the updated subscription does not exist" do
      it "returns a 404 error" do
        patch "/subscriptions/9999", params: {
          subscription: { status: "cancelled" }
        }

        expect(response).to have_http_status(:not_found)
        json = JSON.parse(response.body)
        expect(json["error"]).to eq("Resource not found")
      end
    end

    context "sad path: when the update params are invalid" do
      it "returns a 422 with appropriate error message" do
        patch "/subscriptions/#{subscription.id}", params: {
          subscription: { status: nil }
        }

        expect(response).to have_http_status(:unprocessable_entity)
        json = JSON.parse(response.body)
        expect(json["errors"]).to include("Status can't be blank")
      end
    end
  end
end
