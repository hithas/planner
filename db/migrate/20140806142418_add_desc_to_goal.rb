class AddDescToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :desc, :string
  end
end
