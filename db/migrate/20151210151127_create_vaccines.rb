class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.text :disease
      t.text :location
      t.text :contact
      t.text :info

      t.timestamps null: false
    end
  end
end
