class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string :purpose
      t.string :warnings
      t.string :dosage_and_administration
      t.string :pregnancy_or_breast_feeding
      t.string :stop_use
      t.string :do_not_use
      t.string :indications_and_usage
      t.string :active_ingredient
      t.string :questions

      t.timestamps
    end
  end
end
