# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
(0..10).each do |i|
  product = Product.create( title: Faker::Commerce.product_name, price: Faker::Number.number(digits: 3))
end
user = User.create(phone_number: Faker::PhoneNumber.phone_number, email: 'admin@test.com',password: 12345678,name: Faker::Name.name, address: Faker::Address.full_address)
user.add_role(:admin)
User.create(phone_number: Faker::PhoneNumber.phone_number,email: 'user@test.com',password: 12345678,name: Faker::Name.name ,address: Faker::Address.full_address)
# movie.item_image = Faker::Avatar.image(slug: "my-own-slug")
#   Character.create(name: 'Luke', movie: movies.first)
