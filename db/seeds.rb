# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Poilu.destroy_all

Poilu.create!(name: 'chat', description: 'chat poilu tout dou', location: 'Lausanne', user_id: 1)
Poilu.create!(name: 'pantouffles', description: 'pantouffles poilues roses', location: 'Berne', user_id: 1)
Poilu.create!(name: 'Yeti', description: 'monstre des montagnes blanc', location: 'Verbier', user_id: 1)
