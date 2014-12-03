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

