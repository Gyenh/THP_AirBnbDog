# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#crée 5 villes
5.times do
 City.create(name: Faker::StarWars.planet)
end

#crée 10 dogsitters
10.times do
  DogSitter.create(name: Faker::Name.first_name, city_id: rand((City.first.id)..(City.last.id)))
end

#crée 10 dogs
10.times do
  Dog.create(name: Faker::Dog.name, city_id: rand((City.first.id)..(City.last.id)))
end

30.times do
 dog = Dog.all.sample
 Stroll.create(
   dog_sitter_id: dog.city.dog_sitters.sample.id,
   dog_id: dog.id,
   city_id: dog.city.id
 )
end
