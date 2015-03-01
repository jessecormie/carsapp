class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :user_id
      t.integer :car_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
