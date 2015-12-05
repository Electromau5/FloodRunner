class AddContactToPeople < ActiveRecord::Migration
  def change
    add_column :people, :contact, :integer, :limit => 20
  end
end
