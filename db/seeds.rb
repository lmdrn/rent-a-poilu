# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Poilu.destroy_all

Poilu.create!(name: 'Pêche poilue', description: 'Un petit fruit tout doux pour adoucir vos papilles', location: 'Lausanne', user_id: 1)
Poilu.create!(name: 'Chewbacca', description: 'Vous apportera fidelité en amitié. Capacité conversationnelle diffcile.', location: 'Renens', user_id: 1)
Poilu.create!(name: 'Minou', description: 'Boule de poil arrogante mais attachante', location: 'Lausanne', user_id: 1)
Poilu.create!(name: 'Fizzgig', description: 'Totalement rond. Grande gueule', location: 'Fribourg', user_id: 1)
Poilu.create!(name: 'Balai', description: 'Petits cheveux pratiques pour nettoyer', location: 'Neuchâtel', user_id: 1)
Poilu.create!(name: 'Moquette', description: "Nid à bactéries mais on s'en fout ça rend bien dans le salon", location: 'Bern', user_id: 1)
Poilu.create!(name: 'Perruque', description: 'Pour impressionner tes beaux-parents à Noël', location: 'Zürich', user_id: 1)
Poilu.create!(name: 'Leggings à poils', description: 'Pour rentrer tranquille chez soi le soir', location: 'Genève', user_id: 1)
Poilu.create!(name: 'Torse fourni', description: 'Pour rendre les câlins plus confortables', location: 'Berne', user_id: 1)
Poilu.create!(name: 'Yéti', description: 'Monstre des montagnes blanc. Caractère très sympathique. Préfère les températures fraîches', location: 'Bern', user_id: 1)
