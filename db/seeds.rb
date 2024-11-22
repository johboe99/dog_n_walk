# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Booking.destroy_all
Dog.destroy_all
User.destroy_all

user_1 = User.create(first_name: "Katharina", last_name: "Döhle", email: "katha@doehle.com", password: "123456", description: "I am the owner of precious Romy.")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732195306/Katha_pic_zfev1d.jpg")
user_1.photo.attach(io: file, filename: "katharina.jpg", content_type: "image/jpg")
puts "user 1 created"

user_2 = User.create(first_name: "Lucas", last_name: "Grüner", email: "lucas@grüner.com", password: "123456", description: "I am the owner of sweet Ginny.")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732195306/Lucas_pic_h15bpm.jpg")
user_2.photo.attach(io: file, filename: "lucas.jpg", content_type: "image/jpg")
puts "user 2 created"

user_3 = User.create(first_name: "Johannes", last_name: "Böhmer", email: "johannes@boehmer.com", password: "123456", description: "I am the owner of the giant Rudi.")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732195306/Joh_pic_qv8qqr.jpg")
user_3.photo.attach(io: file, filename: "johannes.jpg", content_type: "image/jpg")
puts "user 3 created"

user_4 = User.create(first_name: "Anik", last_name: "Van Eester", email: "anik@vaneester.com", password: "123456", description: "I am looking to walk a dog in Berlin.")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732195307/Anik_pic_alk98g.jpg")
user_4.photo.attach(io: file, filename: "Anik.jpg", content_type: "image/jpg")
puts "user 4 created"

dog_1 = Dog.create(name: "Romy", breed: "Labrador Retriever", age: 5, description: "Hi, I am Romy, a friendly, young Lady from Hamburg. I love long walks, sticks and carrots and anyone with food.", user: user_1, address: "Kastanienallee 82, 10435 Berlin")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732184045/dae9ab20-8efa-48b6-b93e-cd31bc37b5bb_bkxzac.jpg")
dog_1.photo.attach(io: file, filename: "Romy.jpg", content_type: "image/jpg")
puts "dog 1 created"

dog_2 = Dog.create(name: "Ginny", breed: "Dachshound-Mix", age: 7, description: "I love being the center of attention but I don't like walking in the rain.", user: user_2, address: "Potsdamer Straße 58, 10785 Berlin")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732184058/IMG_6292_gzqb8b.png")
dog_2.photo.attach(io: file, filename: "Ginny.jpg", content_type: "image/jpg")
puts "dog 2 created"

dog_3 = Dog.create(name: "Rudi", breed: "Irish-Wolfhound", age: 8, description: "Hi, I am a gentle giant from Falkensee that loves sleeping and steeling food from the table.", user: user_3, address: "Friedrichstraße 180, 10117 Berlin")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732184045/49453_mo7eso.jpg")
dog_3.photo.attach(io: file, filename: "Rudi.jpg", content_type: "image/jpg")
puts "dog 3 created"

dog_4 = Dog.create(name: "Doge", breed: "Shiba Inu", age: 12, description: "I am a former celebrity, such fame. I also love trading my currency, much coins. Wow.", user: user_4, address: "Karl-Marx-Allee 90, 10243 Berlin")
file = URI.open("https://res.cloudinary.com/dmilkgxzg/image/upload/v1732205456/Original_Doge_meme_fgilgb.jpg")
dog_4.photo.attach(io: file, filename: "Doge.jpg", content_type: "image/jpg")
puts "dog 4 created"

dog_5 = Dog.create(name: "Phteven", breed: "Chihuahua-Dachshound", age: 3, description: "My name is Phteven. I love going to McDonald's but I hate that they spell my name wrong each time", user: user_4, address: "Karl-Marx-Allee 90, 10243 Berlin")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732184045/Tuna-the-dog-Phteven-meme-avy8a_vffdot.jpg")
dog_5.photo.attach(io: file, filename: "Phteven.jpg", content_type: "image/jpg")
puts "dog 5 created"

dog_6 = Dog.create(name: "Momo", breed: "Bobtail", age: 3, description: "Hi, I am Momo, a playful bobtail from Switzerland. I love to walk and wear cute hats.", user: user_1, address: "Tieckstrasse 35, 10115 Berlin")
file = URI.open("https://res.cloudinary.com/dsrno7wgu/image/upload/v1732274859/af9a565e-dee1-42a6-a5ea-f97f1ef8d973_pt5xhr.jpg")
dog_6.photo.attach(io: file, filename: "Momo.jpg", content_type: "image/jpg")
puts "dog 6 created"
