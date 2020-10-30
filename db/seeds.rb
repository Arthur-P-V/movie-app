# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie = Movie.new({ title: "Good Will Hunting", year: 1997, plot: "A troubled genius is confronted by his own potential after being discovered by the faculty of the college he is a janitor for" })
movie.save
movie = Movie.new({ title: "Scott Pilgrim vs The World", year: 2010, plot: "Scott Pilgrim is in love with Ramona Flowers. Ramona Flowers has a complicated romantic past. This means Scott must fight her 7 evil exes to be with her" })
movie.save
