class Dog < ApplicationRecord
  has_many :dog_sitters, through: :strolls
  has_many :strolls
  belongs_to :city
end
