# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
User.destroy_all
Complain.destroy_all

20.times do
  Company.create(name: Faker::Company.name)
end

30.times do
  User.create(email: "#{Faker::Pokemon.name}@gmail.com", password:'123123')
end

250.times do
  Complain.create(user_id: User.all.sample.id, company_id: Company.all.sample.id, content: "#{Faker::RickAndMorty.quote}")
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 
