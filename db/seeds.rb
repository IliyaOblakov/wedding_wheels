# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Booking.destroy_all
Car.destroy_all
User.destroy_all

puts 'fetching some Users'
User.create(email: "admin@gmail.com", first_name: "Kunal", last_name: "Kumar", password: "123456")
5.times do
  user = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "555555"
  )
  user.save!
end

Car.create(make: "Toyota", model: "Prius", photo_url: "https://scene7.toyota.eu/is/image/toyotaeurope/prius-coloured-background-prius-cars-1920x1080?qlt=80&wid=1280&fit=fit,1&ts=0", price: "60gbp", location: "Shoreditch", user_id: User.all.sample.id)
Car.create(make: "Ferrari", model: "Enzo", photo_url: "https://cdn.shopify.com/s/files/1/2784/4966/products/DSCF2369_Resized_65a2f27a-e530-48ee-bbf7-2a484d5c8f08_4000x2677_crop_center.jpg?v=1601655188", price: "120gbp", location: "Angel", user_id: User.all.sample.id)
Car.create(make: "Honda", model: "Civic", photo_url: "https://www.topgear.com/sites/default/files/2022/04/2-Honda-Civic.jpg", price: "80gbp", location: "Chelsea", user_id: User.all.sample.id)
