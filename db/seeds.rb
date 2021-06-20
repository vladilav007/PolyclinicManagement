# run using: rails db:seed

Appointment.destroy_all
User.destroy_all
Doctor.destroy_all
Category.destroy_all

NUMBER_OF_CATEGORIES = ["Surgeon", "Oculist", "Dermatologist", "Dentist", "Psychiatrist"]

for category_name in NUMBER_OF_CATEGORIES do
    category = Category.create(name: category_name)

    number_of_users = rand(5..10)
    number_of_users.times do
        category.users.create(name: Faker::Name.unique.name_with_middle)
    end 

    number_of_doctors = rand(1..3)
    number_of_doctors.times do
        category.doctors.create(name: Faker::Name.unique.last_name)
    end 
end

doctors_with_appointments = Doctor.all.sample(8)

doctors_with_appointments.each do |doctor|
    users = User.all.sample(4)
    users.each do |user|
        Appointment.create(user: user,
                           doctor: doctor,
                           appointment_date: Faker::Time.forward(days: 50, period: :morning))
    end
end

puts "Created #{Category.count} categories."
puts "Created #{User.count} users."
puts "Created #{Doctor.count} doctors."
puts "Created #{Appointment.count} appointments."