class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :disease
      t.string :med
      t.text :note

      t.timestamps null: false
    end
  end
end
