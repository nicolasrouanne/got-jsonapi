# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
authors = Author.create([
  { id: 1, first_name: 'Fernand', last_name: 'Contandin', alias: 'Fernandel' },
  { id: 2, first_name: 'Claude', last_name: 'Brasseur', alias: 'Jacky Pic' }
])

Quote.create([
  { author_id: 1, title: "I ❤️ Pastis", content: "Le pastis, c'est comme les seins : un, c'est pas assez, et trois, c'est trop." },
  { author_id: 2, title: "Camping", content: "Pastis par temps bleu, pastis délicieux." }
])