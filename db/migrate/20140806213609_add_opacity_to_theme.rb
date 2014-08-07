class AddOpacityToTheme < ActiveRecord::Migration
  def change
    add_column :themes, :opaque, :boolean
  end
end
