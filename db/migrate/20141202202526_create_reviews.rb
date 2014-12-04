class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :user_id
      t.integer :bathroom_id
      t.integer :overall_rating
      t.integer :cleanliness
      t.integer :comfort
      t.integer :smell
      t.integer :availability

      t.timestamps
    end
  end
end
