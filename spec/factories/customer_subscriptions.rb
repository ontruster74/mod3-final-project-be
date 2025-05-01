# spec/factories/customer_subscriptions.rb
FactoryBot.define do
  factory :customer_subscription do
    customer
    subscription
  end
end
