class AddCityDogDogsitterToStrolls < ActiveRecord::Migration[5.2]
  def change
    add_reference :strolls, :city, foreign_key: true
    add_reference :strolls, :dog, foreign_key: true
    add_reference :strolls, :dog_sitter, foreign_key: true
  end
end
