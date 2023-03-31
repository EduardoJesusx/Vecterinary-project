class Exam < ApplicationRecord
  belongs_to :pet_owner
  belongs_to :veterinary
end
