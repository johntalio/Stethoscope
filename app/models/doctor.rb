class Doctor < ApplicationRecord

  ny_doctors = HTTParty.get "https://api.betterdoctor.com/2016-03-01/doctors?location=NY&user_location=40.7128%2C74.0059&skip=0&limit=10&user_key=9b916adf7c966d9dce5bb16db9f4b2b2"
  ny_doctors.each do |key, value|
    self.create!(image_url: doctor[:data][v][:profile])
  end
end
