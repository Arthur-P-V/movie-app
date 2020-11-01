# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.new({ first_name: "Ewan", last_name: "Mcgregor", known_for: "Trainspotting" })
actor.save
actor = Actor.new({ first_name: "Sacha", last_name: "Baron Cohen", known_for: "Borat" })
actor.save
actor = Actor.new({ first_name: "Natalia", last_name: "Dyer", known_for: "Stranger Things" })
actor.save
