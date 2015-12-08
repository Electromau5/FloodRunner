class AddAttachmentImageToFuels < ActiveRecord::Migration
  def self.up
    change_table :fuels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fuels, :image
  end
end
