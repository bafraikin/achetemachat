# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Dir.foreach('app/assets/images/cats').each do |cat|
    unless cat == '.' || cat == '..' 
    Item.create(
        title: Faker::Cat.name,
        description: Faker::Cat.breed,
        price: Faker::Commerce.price,
        image_url: cat
    )
    end
end
