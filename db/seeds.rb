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

20.times do
    Items.create([{
        title: Faker::Cat.name,
        description: Faker::Cat.breed,
        price: Faker::Commerce.price,
        image_url: seed_image()
    }])
    end

        def seed_image()
            File.open(File.join(Rails.root, "/app/assets/images/cats/#{file_name}.jpg"))
        end

#    <img src="<%= @item.image_url %>"
