require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  def review_bathroom
  	@review = Review.new
  	assert_equal @review belongs_to :User
	end

  def reviews_not_nil
  	assert_not_nil reviews
  end

  def test_should_not_save_post_without_title
	  post = Post.new
	  assert !post.save
  end

end
