class ChangeGoalsCategoryIdDataType < ActiveRecord::Migration
  def change
    change_column :goals, :category_id, :integer
  end
end
