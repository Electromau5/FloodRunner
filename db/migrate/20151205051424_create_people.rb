class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :description
      t.text :location

      t.timestamps null: false
    end
  end
end
