# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "🗑 Deleting old records..."
Recipe.destroy_all
puts "🚮 Old records deleted!"


puts "🍝 Creating new records..."
10.times do
    recipe = Recipe.create!(
        name: Faker::Food.dish,
        author: Faker::GreekPhilosophers.name,
        image_url: "https://data.thefeedfeed.com/recommended/post_2231063.jpg",
        description: Faker::Food.description
    )

    3.times do 
        Ingredient.create!(
            name: Faker::Food.ingredient,
            measurement: Faker::Food.measurement,
            recipe: recipe
        )
    end
end
puts "✨ New records created!"

puts "🎉 Done!"