class Record < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :user_id, uniqueness: { scope: :doctor_id }
end
