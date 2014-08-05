class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.string :category_id

      t.timestamps
    end
  end
end
