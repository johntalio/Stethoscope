class CreatePrescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :drug_id

      t.timestamps
    end
  end
end
