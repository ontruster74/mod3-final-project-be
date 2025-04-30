class TeaSerializer
  include JSONAPI::Serializer

  attributes :title, :description, :temperature, :brewtime
end
