FactoryBot.define do
  factory :subscription do
    title { "Monthly Tea Box" }
    price { 5.0 }
    status { "active" }
    frequency { "Monthly" }
  end
end
