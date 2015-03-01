class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :cardType
      t.integer :cardNo
      t.date :pickUp
      t.date :dropOff

      t.timestamps
    end
  end
end
