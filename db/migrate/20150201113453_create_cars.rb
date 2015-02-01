class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :numSeats
      t.float :cost
      t.string :colour
      t.boolean :automatic
      t.string :image
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
