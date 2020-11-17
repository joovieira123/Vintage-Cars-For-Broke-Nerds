# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all

Car.create(model: 'Ford Focus', location: 'Sodermalm')
Car.create(model: 'Rolls Royce', location: 'Gamla Stan')
Car.create(model: 'Fiat 500', location: 'Normalm')
