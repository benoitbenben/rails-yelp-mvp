# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

10.times do
  restaurant =Restaurant.new(
    name: Faker::Name.name,
    address: ['dolphin', 'zebu', 'snoop', 'meerkat'].sample,
    phone_number: Faker::Number.number(10),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    )
end
restaurant.save!

puts 'resto added!'


5.times do
  review = Review.new(
    content: Faker::Name.name,
    rating: (0..5).sample,
 )
   review.restaurant_id = restaurant.id
    review.save!
  end
puts 'reviews added!'





