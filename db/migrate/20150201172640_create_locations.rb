class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.date :pickUp
      t.date :dropOff
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end