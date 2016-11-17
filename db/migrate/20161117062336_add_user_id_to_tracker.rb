class AddUserIdToTracker < ActiveRecord::Migration[5.0]
  def change
    add_column :trackers, :user_id, :integer
  end
end
