class Doctor < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :title, presence: true

  ny_doctors_hash = HTTParty.get "https://api.betterdoctor.com/2016-03-01/doctors?location=NY&user_location=40.7128%2C74.0059&skip=0&limit=10&user_key=9b916adf7c966d9dce5bb16db9f4b2b2"
  ny_doctors_hash["data"].each do |doctor|
    self.find_or_create_by(image_url: doctor["profile"]["image_url"], first_name: doctor["profile"]["first_name"], last_name: doctor["profile"]["last_name"], title: doctor["profile"]["title"], bio: doctor["profile"]["bio"])
  end

  def self.redundant
    # group all doctors by keys that are common - group_by returns hash
    grouped = Doctor.all.group_by {|doctor| [doctor.last_name, doctor.bio]}
    # loop over the model's values
    grouped.values.each do |duplicates|
      # retain one copy for database
      duplicates.shift
      # delete redundancies if they exist
      duplicates.each {|redundant| redundant.destroy}
    end
  end

  Doctor.redundant

  def self.search(search)
    where("first_name LIKE ? OR last_name LIKE ? OR title LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
