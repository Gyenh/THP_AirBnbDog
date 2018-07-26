class Stroll < ApplicationRecord
  has_many :dogs
  has_many :dog_sitters
  belongs_to :city
end
