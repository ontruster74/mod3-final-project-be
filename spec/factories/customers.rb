FactoryBot.define do
  factory :customer do
    firstname { "Test" }
    lastname  { "User" }
    email      { "test@example.com" }
    address    { "123 Main St" }
  end
end
