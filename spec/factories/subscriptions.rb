FactoryBot.define do
  factory :subscription do
    title { "Monthly Tea Box" }
    price { 19.99 }
    frequency { "Monthly" }
  end
end
