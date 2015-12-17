class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.text :requirement
      t.text :location
      t.text :contact
      t.text :info

      t.timestamps null: false
    end
  end
end
