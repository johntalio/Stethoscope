class AddSpecialtyToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :specialty, :string
  end
end
