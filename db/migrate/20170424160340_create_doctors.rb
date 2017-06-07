class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :image_url
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :title, null: false
      t.string :bio

      t.timestamps
    end
  end
end
