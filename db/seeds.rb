# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
houses = House.create([
  { id: 1, name: 'House Stark', region: 'The North', words: 'Winter is coming.', seat: 'Winterfell' },
  { id: 2, name: 'House Lannister', region: 'The Westerlands', words: 'A Lannister always pays his debts.', seat: 'Casterly Rock' }
])

Character.create([
  { house_id: 1, name: "Jon Snow", died: false },
  { house_id: 1, name: "Arya Stark", died: false },
  { house_id: 2, name: "Tyrion Lannister", died: false }
])