class AddThemeIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :theme_id, :integer
  end
end
