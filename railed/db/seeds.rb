# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Brian', city: 'Berkeley', review_count:1)
Bathroom.create(name: 'Wheeler 1st Floor', location: 'Wheeler Hall', rating:3, cleanliness:3, comfort:3, smell:3, availability:3)
Bathroom.create(name: 'Dwinelle Dungeon of Dreams', location: 'Dwinelle Hall', rating:1, cleanliness:1, comfort:1, smell:1, availability:1)

