class CreateFuels < ActiveRecord::Migration
  def change
    create_table :fuels do |t|
      t.string :location
      t.string :time
      t.string :supply
      t.string :date

      t.timestamps null: false
    end
  end
end
