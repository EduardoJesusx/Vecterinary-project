class Animal < ApplicationRecord
  belongs_to :pet_owner

  validates :name, presence: true, length: {maximum: 60}
  validates :observation, presence: true, length: {maximum: 1200}
end
