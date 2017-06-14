# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

10.times do
  User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password")
end

ny_doctors_hash = HTTParty.get "https://api.betterdoctor.com/2016-03-01/doctors?location=NY&user_location=40.7128%2C74.0059&skip=0&limit=10&user_key=9b916adf7c966d9dce5bb16db9f4b2b2"
ny_doctors_hash["data"].each do |doctor|
  Doctor.find_or_create_by(image_url: doctor["profile"]["image_url"], first_name: doctor["profile"]["first_name"], last_name: doctor["profile"]["last_name"], title: doctor["profile"]["title"], bio: doctor["profile"]["bio"], city: doctor["practices"][0]["visit_address"]["city"],
  state: doctor["practices"][0]["visit_address"]["state"], street: doctor["practices"][0]["visit_address"]["street"], zip: doctor["practices"][0]["visit_address"]["zip"], specialty: doctor["specialties"][0]["name"],
  specialty_info: doctor["specialties"][0]["description"], phone_num: doctor["practices"][0]["phones"][0]["number"], phone_type: doctor["practices"][0]["phones"][0]["type"])
end

nj_doctors_hash = HTTParty.get "https://api.betterdoctor.com/2016-03-01/doctors?location=NJ&skip=0&limit=10&user_key=9b916adf7c966d9dce5bb16db9f4b2b2"
nj_doctors_hash["data"].each do |doctor|
  Doctor.find_or_create_by(image_url: doctor["profile"]["image_url"], first_name: doctor["profile"]["first_name"], last_name: doctor["profile"]["last_name"], title: doctor["profile"]["title"], bio: doctor["profile"]["bio"], city: doctor["practices"][0]["visit_address"]["city"],
  state: doctor["practices"][0]["visit_address"]["state"], street: doctor["practices"][0]["visit_address"]["street"], zip: doctor["practices"][0]["visit_address"]["zip"], specialty: doctor["specialties"][0]["name"],
  specialty_info: doctor["specialties"][0]["description"], phone_num: doctor["practices"][0]["phones"][0]["number"], phone_type: doctor["practices"][0]["phones"][0]["type"])
end

ma_doctors_hash = HTTParty.get "https://api.betterdoctor.com/2016-03-01/doctors?location=MA&skip=0&limit=10&user_key=9b916adf7c966d9dce5bb16db9f4b2b2"
ma_doctors_hash["data"].each do |doctor|
  Doctor.find_or_create_by(image_url: doctor["profile"]["image_url"], first_name: doctor["profile"]["first_name"], last_name: doctor["profile"]["last_name"], title: doctor["profile"]["title"], bio: doctor["profile"]["bio"], city: doctor["practices"][0]["visit_address"]["city"],
  state: doctor["practices"][0]["visit_address"]["state"], street: doctor["practices"][0]["visit_address"]["street"], zip: doctor["practices"][0]["visit_address"]["zip"], specialty: doctor["specialties"][0]["name"],
  specialty_info: doctor["specialties"][0]["description"], phone_num: doctor["practices"][0]["phones"][0]["number"], phone_type: doctor["practices"][0]["phones"][0]["type"])
end
