# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do |i|
  Item.create(title: Faker::Cat.name, description: Faker::Cat.breed, price: Faker::Number.decimal(2), image_url: "#{i + 1}.jpg")
end

user = User.new
user.email = 'yossi.capelluto@gmail.com'
user.encrypted_password = 'azerty33'
user.admin = true
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!

user = User.new
user.email = 'mcuville@gmail.com'
user.encrypted_password = 'azerty33'
user.admin = true
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!

user = User.new
user.email = 'dremsis@hotmail.ca'
user.encrypted_password = 'azerty33'
user.admin = true
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!
