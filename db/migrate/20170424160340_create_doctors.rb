class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :image_url
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :bio

      t.timestamps
    end
  end
end
