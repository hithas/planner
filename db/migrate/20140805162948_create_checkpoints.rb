class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string :name
      t.integer :goal_id
      t.integer :num
      t.boolean :completed

      t.timestamps
    end
  end
end
