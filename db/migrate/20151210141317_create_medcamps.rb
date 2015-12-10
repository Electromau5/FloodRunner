class CreateMedcamps < ActiveRecord::Migration
  def change
    create_table :medcamps do |t|
      t.text :location
      t.text :organiser
      t.text :contact
      t.text :date
      t.text :info

      t.timestamps null: false
    end
  end
end
