class Prescription < ApplicationRecord
  belongs_to :user
  belongs_to :drug

  validates :user_id, uniqueness: { scope: :drug_id }
end
