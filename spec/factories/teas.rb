FactoryBot.define do
  factory :tea do
    title        { "Jasmine Green" }
    description  { "Floral and soothing green tea." }
    temperature  { 180 }
    brewtime    { 3 }
    subscription
  end
end
