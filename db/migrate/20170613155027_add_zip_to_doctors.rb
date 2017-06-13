class AddZipToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :zip, :string
  end
end
