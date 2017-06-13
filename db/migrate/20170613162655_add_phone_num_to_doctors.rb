class AddPhoneNumToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :phone_num, :string
  end
end
