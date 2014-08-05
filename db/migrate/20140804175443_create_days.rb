class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :date
      t.boolean :weekday

      t.timestamps
    end
  end
end
