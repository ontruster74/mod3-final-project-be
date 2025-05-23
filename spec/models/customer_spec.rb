require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe "associations" do
    it { should have_many(:customer_subscriptions) }
    it { should have_many(:subscriptions).through(:customer_subscriptions) }
  end

  describe "validations" do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:address) }
  end
end

