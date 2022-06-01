require 'faker'
Restaurant.destroy_all
category = ['chinese', 'italian', 'japanese', 'french', 'belgian']
5.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.city, phone_number: Faker::PhoneNumber.cell_phone, category: category.sample)
  10.times do
    review = Review.new(content: Faker::Restaurant.review, rating: Faker::Number.between(from: 1, to: 5))
    review.restaurant = restaurant
    review.save!
  end
end
