class AddReviewCountToBathroom < ActiveRecord::Migration
  def change
    add_column :bathrooms, :review_count, :integer
  end
end
