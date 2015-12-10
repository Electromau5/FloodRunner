class CreateMiscs < ActiveRecord::Migration
  def change
    create_table :miscs do |t|
      t.text :subject
      t.text :details

      t.timestamps null: false
    end
  end
end
