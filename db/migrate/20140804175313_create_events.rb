class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.time :start_time
      t.time :end_time
      t.integer :category_id
      t.integer :day_id

      t.timestamps
    end
  end
end
