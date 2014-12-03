# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Make users
%w(Brian Michelle Gavin).each do |name|
  User.create name: name, email: name+"@crudmail.com", password: 'password', city: 'Berkeley', review_count: 0
end
%w(Wheeler Dwinelle Soda).each do |name|
	Bathroom.create name: name, location: name, rating: 1, cleanliness: 1, comfort: 1, smell: 1, availability: 1, review_count: 1
end

Review.create text: 'This bathroom is the CRUD!! 5/5 would poop again.', overall_rating: 1, cleanliness: 1, comfort: 1, smell: 1, availability: 1, bathroom_id: 1, user_id: 1
Review.create text: 'This bathroom stinks. Needs better TP...', overall_rating: 1, cleanliness: 1, comfort: 1, smell: 1, availability: 1, bathroom_id: 2, user_id: 2
Review.create text: 'The best place to relive my bladder of all the soda I drank!', overall_rating: 1, cleanliness: 1, comfort: 1, smell: 1, availability: 1, bathroom_id: 3, user_id: 3
