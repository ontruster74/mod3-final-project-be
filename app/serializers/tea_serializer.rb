class TeaSerializer
  include JSONAPI::Serializer

  attributes :title, :description, :temperature, :brewtime
  
  belongs_to :subscription
end
