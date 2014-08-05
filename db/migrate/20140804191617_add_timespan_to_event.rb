class AddTimespanToEvent < ActiveRecord::Migration
  def change
    add_column :events, :timespan, :integer
  end
end
