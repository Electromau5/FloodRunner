class DropDoctorsTable < ActiveRecord::Migration
  def up
    drop_table :doctors
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end