class AddAttachmentImageToSpecials < ActiveRecord::Migration
  def self.up
    change_table :specials do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :specials, :image
  end
end
