class User < ApplicationRecord
  has_many :records
  has_many :doctors, :through => :records
  has_many :prescriptions
  has_many :drugs, :through => :prescriptions

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: {in: 6..20}
  has_secure_password
end
