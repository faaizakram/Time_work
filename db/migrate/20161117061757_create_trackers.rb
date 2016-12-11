class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      
      t.datetime :date
      t.string :task
      t.integer :hours
      t.string :flag
      t.timestamps
    end
  end
end
