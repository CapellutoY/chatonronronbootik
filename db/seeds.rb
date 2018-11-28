# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


20.times do
  Item.create(title: Faker::Cat.name, description: Faker::Cat.breed, price: Faker::Number.decimal(2), image_url: "http://random.cat/view/#{Faker::Number.between(1,1677)}")
end

user = User.new
<<<<<<< HEAD
user.email = 'test42@example.com'
=======
user.email = 'test@example.com'
>>>>>>> master
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!

Cart.create(user_id: User.first.id)

Cart.first.items << Item.first
Cart.first.items << Item.find(5)
