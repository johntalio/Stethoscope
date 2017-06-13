class AddStateToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :state, :string
  end
end
