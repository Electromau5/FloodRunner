class AddDiversionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :diversion, :string
  end
end
