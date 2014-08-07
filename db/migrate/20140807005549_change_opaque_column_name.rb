class ChangeOpaqueColumnName < ActiveRecord::Migration
  def change
    rename_column :themes, :opaque, :transparent
  end
end
