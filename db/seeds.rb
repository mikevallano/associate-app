# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html


10.times do Category.create(name: Faker::Hacker.noun)
end

category_id_array = *(Category.first.id..Category.last.id)


10.times do

  cat_id_one = category_id_array.sample
  cat_id_two = category_id_array[cat_id_one - 2]

  Article.create(title: Faker::Hacker.adjective,
  content: Faker::Hacker.say_something_smart,
  category_ids: [cat_id_one, cat_id_two])
end

