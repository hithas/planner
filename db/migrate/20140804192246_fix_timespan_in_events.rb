class FixTimespanInEvents < ActiveRecord::Migration
  def change
    remove_column :events, :timespan
    add_column :events, :timespan, :integer
  end
end
