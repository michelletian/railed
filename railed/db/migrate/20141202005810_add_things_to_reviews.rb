class AddThingsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :cleanliness, :integer
    add_column :reviews, :comfort, :integer
    add_column :reviews, :smell, :integer
    add_column :reviews, :availability, :integer
  end
end
