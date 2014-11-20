class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :bathroom_id
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
