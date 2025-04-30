class Tea < ApplicationRecord
  belongs_to :subscription

  validates :title, :description, :temperature, :brewtime, presence: true 
end
