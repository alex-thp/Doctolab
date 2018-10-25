# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  doctor = Doctor.create!(first_name: Faker::StarWars.vehicle, last_name: Faker::StarWars.droid, speciality: Faker::StarWars.specie, postal_code: Faker::StarWars.planet)
end

20.times do
  patient = Patient.create!(first_name:Faker::GameOfThrones.character, last_name: Faker::GameOfThrones.house)
end

50.times do
  appoitment= Appoitment.create!(doctor_id: Faker::Number.between(1, 10), patient_id: Faker::Number.between(1, 20))
end
