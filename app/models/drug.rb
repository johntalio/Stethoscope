class Drug < ApplicationRecord
  has_many :prescriptions
  has_many :users, :through => :prescriptions

  validates :generic_name, :brand_name, presence: true

  def self.search(search)
    where("generic_name LIKE ? OR brand_name LIKE ?", "%#{search}%", "%#{search}%")
  end
end
