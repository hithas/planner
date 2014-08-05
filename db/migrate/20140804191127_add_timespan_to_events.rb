class AddTimespanToEvents < ActiveRecord::Migration
  def change
    add_column :events, :timespan, :int
  end
end
