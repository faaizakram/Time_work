class AddAttachmentDocumentToTrackers < ActiveRecord::Migration
  def self.up
    change_table :trackers do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :trackers, :document
  end
end
