# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
Dog.destroy_all
User.destroy_all

user_1 = User.create(first_name: "Katharina", last_name: "Döhle", email: "katha@döhle.com", password: "123456", description: "I am the owner of precious Romy.")
user_2 = User.create(first_name: "Lucas", last_name: "Grüner", email: "lucas@grüner.com", password: "123456", description: "I am the owner of sweet Ginny.")
user_3 = User.create(first_name: "Johannes", last_name: "Böhmer", email: "johannes@böhmer.com", password: "123456", description: "I am the owner of the giant Rudi.")
user_4 = User.create(first_name: "Anik", last_name: "Van_Eester", email: "anik@vaneester.com", password: "123456", description: "I am looking to walk a dog in Berlin.")

Dog.create(name: "Romy", breed: "Labrador Retriever", age: 5, description: "Hi, I am Romy, a friendly, young Lady from Hamburg. I love long walks, sticks and carrots and anyone with food.", user: user_1, address: "Kastanienallee 82, 10435 Berlin")
Dog.create(name: "Ginny", breed: "Dachshound-Mix", age: 7, description: "I love being the center of attention but I don't like walking in the rain.", user: user_2, address: "Potsdamer Straße 58, 10785 Berlin")
Dog.create(name: "Rudi", breed: "Irish-Wolfhound", age: 8, description: "Hi, I am a gentle giant from Falkensee that loves sleeping and steeling food from the table.", user: user_3, address: "Friedrichstraße 180, 10117 Berlin")
Dog.create(name: "Doge", breed: "Shiba Inu", age: 12, description: "I am a former celebrity, such fame. I also love trading my currency, much coins. Wow.", user: user_4, address: "Karl-Marx-Allee 90, 10243 Berlin")
Dog.create(name: "Phteven", breed: "Chihuahua-Dachshound", age: 3, description: "My name is Phteven. I love going to McDonald's but I hate that they spell my name wrong each time", user: user_4, address: "Karl-Marx-Allee 90, 10243 Berlin")
