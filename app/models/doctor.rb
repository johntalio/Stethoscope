class Doctor < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :title, presence: true

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
