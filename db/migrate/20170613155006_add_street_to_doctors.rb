class AddStreetToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :street, :string
  end
end
