class AddPhoneTypeToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :phone_type, :string
  end
end
