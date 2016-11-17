class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      t.decimal :amount, precision: 15, scale: 2, default: 0
      t.datetime :date
      t.string :task
      t.float :hours
      t.timestamps
    end
  end
end
