class DropUnnecessaryTables < ActiveRecord::Migration
  def change
    drop_table :events
    drop_table :days
  end
end
