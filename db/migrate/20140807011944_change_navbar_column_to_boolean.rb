class ChangeNavbarColumnToBoolean < ActiveRecord::Migration
  def change
    change_column :themes, :navbar, :boolean
  end
end
