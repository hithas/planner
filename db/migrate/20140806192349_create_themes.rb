class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.string :navbar
      t.string :background
      t.string :color

      t.timestamps
    end
  end
end
