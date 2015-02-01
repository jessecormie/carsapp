class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.string :firstName
      t.string :lastName
      t.string :email
      t.integer :phoneNum
      t.date :dob

      t.timestamps
    end
  end
end
