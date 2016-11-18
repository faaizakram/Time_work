class AddAttachmentAvatarToTrackers < ActiveRecord::Migration
  def self.up
    change_table :trackers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :trackers, :avatar
  end
end
