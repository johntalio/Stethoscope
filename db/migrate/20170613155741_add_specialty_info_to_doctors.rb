class AddSpecialtyInfoToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :specialty_info, :string
  end
end
