# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# table Item
# title: string
# description: text
# price: decimal 
# image_url: string  <img src="<%= @item.image_url %>">

require 'faker'


Dir.foreach('app/assets/images/cats').each do |cat|

    unless cat == '.' || cat == '..' 
    Item.create(
        title: Faker::Cat.name,
        description: Faker::Lorem.paragraph,
        price: Faker::Number.number(3),
        image_url: cat

    )
    end

end



