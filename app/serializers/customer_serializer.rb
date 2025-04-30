class CustomerSerializer
  include JSONAPI::Serializer

  attributes :firstname, :lastname, :email, :address

  has_many :subscriptions
end
