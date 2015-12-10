class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :name
      t.text :location
      t.text :contact

      t.timestamps null: false
    end
  end
end
