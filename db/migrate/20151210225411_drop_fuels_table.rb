class DropFuelsTable < ActiveRecord::Migration
  def up
  	drop_table :fuels
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
