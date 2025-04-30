class SubscriptionSerializer
  include JSONAPI::Serializer
  
  attributes :title, :price, :status, :frequency

  attribute :customers do |subscription|
    subscription.customers.map do |customer|
      {
        id: customer.id,
        firstname: customer.firstname,
        lastname: customer.lastname,
        email: customer.email,
        address: customer.address
      }
    end
  end

  attribute :teas do |subscription|
    subscription.teas.map do |tea|
      {
        id: tea.id,
        title: tea.title,
        description: tea.description,
        temperature: tea.temperature,
        brewtime: tea.brewtime
      }
    end
  end
end