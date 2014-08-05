class AddNumberOfCheckpointsToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :checkpoints, :integer
  end
end
