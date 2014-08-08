class AddDateColumnToCheckpoint < ActiveRecord::Migration
  def change
    add_column :checkpoints, :date, :datetime
  end
end
