puts 'Cleaning database...'
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.new(
    name: Faker::Name.name,
    address: ['dolphin', 'zebu', 'snoop', 'meerkat'].sample,
    phone_number: Faker::Number.number(10),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )

  restaurant.save!

  5.times do
    review = Review.new(
      content: Faker::Name.name,
      rating: (0..5).to_a.sample
  )
     review.restaurant_id = restaurant.id
      review.save!
  end
end
puts 'database... validate'

