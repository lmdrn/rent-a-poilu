# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "faker"
Poilu.destroy_all


LOCATIONS = ['Lausanne','Renens','Genève','Bern','Zürich','Neuchâtel','Fribourg']
puts "Creating users"


filep = URI.open('https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_960_720.jpg')
paul = User.new(username: 'Paul', email: 'paul@lepoulpe.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
paul.photo.attach(io: filep, filename: 'paul.jpg', content_type:'image/jpg')
paul.save


files = URI.open('https://cdn.pixabay.com/photo/2017/11/19/07/30/girl-2961959_960_720.jpg')
sarah = User.new(username: 'Sarah', email: 'sarah@croche.ch', :password => 'topsecret', :password_confirmation => 'topsecret')
sarah.photo.attach(io: files, filename: 'sarah.jpg', content_type:'image/jpg')
sarah.save

puts "Creating poilus"

file1 = URI.open('https://www.plisson1808.com/img/cms/touffe_HauteMontagne.jpg')
poilu1 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '15', location: LOCATIONS.sample)
poilu1.photo.attach(io: file1, filename: 'poilu1.jpg', content_type:'image/jpg')
poilu1.save

file2 = URI.open('https://www.norki-decoration.com/wp-content/uploads/2017/02/coussin-mouton-gris-souris-poils-longs.jpg')
poilu2 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '15', location: LOCATIONS.sample)
poilu2.photo.attach(io: file2, filename: 'poilu2.jpg', content_type:'image/jpg')
poilu2.save

file3 = URI.open('https://www.peaudevache.com/908-thickbox_default/tabouret-en-mouton-gris-dona-poils-courts-avec-pieds-en-vritable-bois-de-bouleau.jpg')
poilu3 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: sarah.id, price: '15', location: LOCATIONS.sample)
poilu3.photo.attach(io: file3, filename: 'poilu3.jpg', content_type:'image/jpg')
poilu3.save

file4 = URI.open('https://www.lapiscine-paris.fr/28581/top-noir-a-poils-effet-metalique-space.jpg')
poilu4 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '15', location: LOCATIONS.sample)
poilu4.photo.attach(io: file4, filename: 'poilu4.jpg', content_type:'image/jpg')
poilu4.save

file5 = URI.open('https://cdn-s-www.estrepublicain.fr/images/663E4874-F342-4350-8844-05F5FF54FAA5/NW_raw/gros-plan-sur-les-chenilles-du-chene-avec-leurs-poils-urticants-photo-rl-frederic-lecocq-1563123783.jpg')
poilu5 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: sarah.id, price: '25', location: LOCATIONS.sample)
poilu5.photo.attach(io: file5, filename: 'poilu5.jpg', content_type:'image/jpg')
poilu5.save

file6 = URI.open('https://soirmag.lesoir.be/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2017/10/10/node_118519/8785846/public/2017/10/10/B9713449655Z.1_20171010103909_000+GIV9UNP1C.1-0.png.jpg?itok=4ih6hShq1507625379')
poilu6 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '18', location: LOCATIONS.sample)
poilu6.photo.attach(io: file6, filename: 'poilu6.jpg', content_type:'image/jpg')
poilu6.save

file7 = URI.open('https://cdn.generationvoyage.fr/2014/11/animaux-poils-insolites-4.jpg')
poilu7 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: sarah.id, price: '1000', location: LOCATIONS.sample)
poilu7.photo.attach(io: file7, filename: 'poilu7.jpg', content_type:'image/jpg')
poilu7.save

file8 = URI.open('https://cdn.generationvoyage.fr/2014/11/animaux-poils-insolites-15.jpg')
poilu8 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '350', location: LOCATIONS.sample)
poilu8.photo.attach(io: file8, filename: 'poilu8.jpg', content_type:'image/jpg')
poilu8.save

file9 = URI.open('https://medias.liberation.fr/photo/528570-collant-poilu.jpg?modified_at=1371565180&width=975')
poilu9 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: sarah.id, price: '5', location: LOCATIONS.sample)
poilu9.photo.attach(io: file9, filename: 'poilu9.jpg', content_type:'image/jpg')
poilu9.save

file10 = URI.open('https://www.monsieur-paillettes.com/10343-large_default/fausse-moustache-et-rouflaquettes-de-hippie.jpg')
poilu10 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: sarah.id, price: '45', location: LOCATIONS.sample)
poilu10.photo.attach(io: file10, filename: 'poilu.10jpg', content_type:'image/jpg')
poilu10.save

file11 = URI.open('https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Ff05e7920-e43e-11e8-9ca5-2dc8c6b25903.jpg?crop=2116%2C2646%2C138%2C12')
poilu11 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: sarah.id, price: '550', location: LOCATIONS.sample)
poilu11.photo.attach(io: file11, filename: 'poilu11.jpg', content_type:'image/jpg')
poilu11.save

file12 = URI.open('https://www.celibattantes.fr/wp-content/uploads/2015/05/Homme-Caverne-Engagement.jpg')
poilu12 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '25', location: LOCATIONS.sample)
poilu12.photo.attach(io: file12, filename: 'poilu12.jpg', content_type:'image/jpg')
poilu12.save

file13 = URI.open('https://jardinierparesseux.files.wordpress.com/2019/12/20191220a-manzel-pumpkin-pinterest.ca_.jpg?w=800')
poilu13 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '10', location: LOCATIONS.sample)
poilu13.photo.attach(io: file13, filename: 'poilu13.jpg', content_type:'image/jpg')
poilu13.save

file14 = URI.open('https://exclusifparis.com/14684-thickbox_default/cocon.jpg')
poilu14 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '80', location: LOCATIONS.sample)
poilu14.photo.attach(io: file14, filename: 'poilu14.jpg', content_type:'image/jpg')
poilu14.save

file15 = URI.open('https://images.cdn.snowleader.com/media/catalog/product/cache/1/image/0dc2d03fe217f8c83829496872af24a0/b/o/boxer_poilstrusse_-configurable-pictureorg-pict01578.jpg')
poilu15 = Poilu.new(name: Faker::Artist.name, description: Faker::Movies::Hobbit.quote, user_id: paul.id, price: '5', location: LOCATIONS.sample)
poilu15.photo.attach(io: file15, filename: 'poilu15.jpg', content_type:'image/jpg')
poilu15.save

puts "finished!"
