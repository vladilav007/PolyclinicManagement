# run using: rails db:seed
User.destroy_all
Category.destroy_all

NUMBER_OF_CATEGORIES = ["Surgeon", "Oculist", "Dermatologist", "Dentist", "Psychiatrist"]

for category_name in NUMBER_OF_CATEGORIES do
    category = Category.create(name: category_name)

    number_of_users = rand(5..10)
    number_of_users.times do
        category.users.create(name: Faker::Name.unique.name_with_middle)
    end 
end

puts "Created #{Category.count} Categories."
puts "Created #{User.count} users."