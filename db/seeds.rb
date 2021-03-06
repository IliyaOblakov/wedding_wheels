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

Car.create(make: "Aston Martin", model: "DB7", photo_url: "https://classiccarhirenorth.co.uk/wp-content/uploads/2017/01/Wedding_Cars-Leeds.jpg", price: "£60", location: "Stamford Bridge, Fulham Rd., London SW6 1HS", user_id: User.all.sample.id)
Car.create(make: "Beauford", model: "1930", photo_url: "https://exclusiveweddingcars.net/images/beauford-1-675x516.jpg", price: "£120", location: "Islington High St, London", user_id: User.all.sample.id)
Car.create(make: "Beauford Open", model: "Top Tourer", photo_url: "https://hamiltonweddingcars.com/wp-content/uploads/2020/09/Beauford-Open-Top-Tourer-Wedding-Car-11025-4.jpg", price: "£80", location: "Fulham Rd., London SW6", user_id: User.all.sample.id)
Car.create(make: "Bramwith", model: "7 Seater", photo_url: "https://hamiltonweddingcars.com/wp-content/uploads/2020/09/Bramwith-7-Seater-Wedding-Car-11028-1.jpg", price: "£60", location: "145 Shoreditch High St, London E1 6JE", user_id: User.all.sample.id)
Car.create(make: "Pink American Cadillac", model: "Le Grande", photo_url: "https://www.premiercarriage.co.uk/images/vehicles/2016/09/pink-cadillac-wedding-car-hire-egham-surrey.jpg?v=0012", price: "£120", location: "53 Upper St, London N1 0UY", user_id: User.all.sample.id)
Car.create(make: "Mercedes", model: "CLK 320", photo_url: "https://www.instant-quote.co/images/cars/large/o_1c8i093bg1eb23n51lvmbtr19p8l.jpg", price: "£80", location: "Chelsea", user_id: User.all.sample.id)
Car.create(make: "Aston Martin Black Taxi", model: "FX3", photo_url: "https://www.lordcars.co.uk/wp-content/uploads/2021/02/Wedding-Car-Transport-Classic-Cars-Vintage-Taxi-Black-Cab-Lord-Cars-Hire-Specialist-48-1024x683.jpg", price: "£60", location: "290 Hoe Street, London E17 9QD", user_id: User.all.sample.id)
Car.create(make: "Rolls Royce", model: "Silver Dawn", photo_url: "https://www.lordcars.co.uk/wp-content/uploads/2020/11/White-Red-Wedding-Car-Hire-Regal-Lady-Rolls-Royce-Silver-Dawn-lord-cars-car-hire-specialist-08-1024x768.jpg", price: "£120", location: "73 City Rd, Greater, London EC1Y 1BD", user_id: User.all.sample.id)
Car.create(make: "Ferrari", model: "458 Spider", photo_url: "https://www.premiercarriage.co.uk/images/vehicles/2017/10/ferrariwedding-car-hire-bournemouth.jpg?v=0012", price: "£80", location: "Chelsea Manor St, London SW3 5EE", user_id: User.all.sample.id)
Car.create(make: "Bentley", model: "Noble Lady", photo_url: "https://weddingcarhire.co.uk/images/gallery/classic-wedding-cars/noble-lady-bentley-r/957.jpg", price: "£60", location: "5 Pancras Sq, London N1C 4AG", user_id: User.all.sample.id)
Car.create(make: "Bentley", model: "Silver Lady", photo_url: "https://weddingcarhire.co.uk/images/gallery/classic-wedding-cars/silver-lady-bentley/1048.jpg", price: "£120", location: "147-151 Golders Green Rd, London NW11 9BN", user_id: User.all.sample.id)
Car.create(make: "Rolls Royce", model: "Phantom", photo_url: "https://www.lastretchlimos.co.uk/wp-content/uploads/2013/10/rr-phantom-hire.jpg", price: "£80", location: "The Grn, Richmond TW9 1LX", user_id: User.all.sample.id)
