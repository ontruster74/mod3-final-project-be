require 'rails_helper'

RSpec.describe "Subscriptions API", type: :request do
  let!(:subscriptions) { create_list(:subscription, 3) }
  let(:subscription_id) { subscriptions.first.id }

  describe "GET /subscriptions" do
    it "returns all subscriptions" do
      get "/subscriptions"

      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)["data"].size).to eq(3)
    end
  end

  describe "GET /subscriptions/:id" do
    context "when the record exists" do
      it "returns the subscription" do
        get "/subscriptions/#{subscription_id}"

        expect(response).to have_http_status(:ok)
        expect(JSON.parse(response.body)["data"]["id"]).to eq(subscription_id.to_s)
      end
    end

    context "when the record does not exist" do
      it "returns a 404" do
        get "/subscriptions/999999"

        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe "POST /subscriptions" do
    let(:valid_attributes) do
      {
        subscription: {
          title: "Green Tea Box",
          price: 15.50,
          frequency: "Monthly"
        }
      }
    end

    context "with valid params" do
      it "creates a new subscription" do
        expect {
          post "/subscriptions", params: valid_attributes
        }.to change(Subscription, :count).by(1)

        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "returns a 422 error" do
        post "/subscriptions", params: { subscription: { title: "" } }

        expect(response).to have_http_status(:unprocessable_entity)
        expect(JSON.parse(response.body)["errors"]).to be_present
      end
    end
  end

  describe "PATCH /subscriptions/:id" do
    let(:update_params) do
      { subscription: { price: 22.99 } }
    end

    it "updates the subscription" do
      patch "/subscriptions/#{subscription_id}", params: update_params

      expect(response).to have_http_status(:ok)
      expect(Subscription.find(subscription_id).price).to eq(22.99)
    end
  end
end
