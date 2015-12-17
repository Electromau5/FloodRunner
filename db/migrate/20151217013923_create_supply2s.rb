class CreateSupply2s < ActiveRecord::Migration
  def change
    create_table :supply2s do |t|
      t.text :material
      t.text :location
      t.text :contact
      t.text :info

      t.timestamps null: false
    end
  end
end
