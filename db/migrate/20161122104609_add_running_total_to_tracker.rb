class AddRunningTotalToTracker < ActiveRecord::Migration[5.0]
  def change
    add_column :trackers, :running_total, :string
  end
end
