class CreateSubtrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :subtrackers do |t|
      t.string :subtask
      t.integer  :hours
      t.string  :status
      t.belongs_to :tracker, foreign_key: true

      t.timestamps
    end
  end
end
