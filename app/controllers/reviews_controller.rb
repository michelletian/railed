class ReviewsController < ApplicationController
	def update
		@review = Review.create()
		@review.cleanliness = params[:review][:cleanliness]
		@review.comfort = params[:review][:comfort]
		@review.availability = params[:review][:availability]
		@review.smell = params[:review][:smell]
		@review.text = params[:review][:text]
		@review.overall_rating = (@review.cleanliness + @review.comfort + @review.availability + @review.smell)/4
		@review.user_id = current_user.id
		@review.bathroom_id = params[:review][:bathroom_id]
		if @review.valid?
			@review.save
			@bathroom = Bathroom.find(@review.bathroom_id)
			count = @bathroom.review_count
			if count > 0
				@bathroom.review_count += 1
				@bathroom.rating = ((@bathroom.rating * count) + @review.overall_rating)/@bathroom.review_count
				@bathroom.comfort = ((@bathroom.comfort * count) + @review.comfort)/@bathroom.review_count 
				@bathroom.smell = ((@bathroom.smell * count) + @review.smell)/@bathroom.review_count
				@bathroom.cleanliness = ((@bathroom.cleanliness * count) + @review.cleanliness)/@bathroom.review_count
				@bathroom.availability = ((@bathroom.availability * count) + @review.availability)/@bathroom.review_count
			else
				@bathroom.review_count = 1
				@bathroom.rating = @review.overall_rating
				@bathroom.comfort = @review.comfort
				@bathroom.availability = @review.availability
				@bathroom.smell = @review.smell
				@bathroom.cleanliness = @review.cleanliness
			end
			@bathroom.save
			@user = User.find(@review.user_id)
			@user.review_count += 1
			@user.save
			redirect_to bathroom_path(@review.bathroom_id)
		else
			flash[:error] = @review.errors.full_messages.to_sentence
			redirect_to root_path
		end
	end


	def review_params
    params.require(:review).permit(:overall_rating, :comfort, :smell, :cleanliness, :availability, :text, :user_id, :bathroom_id)
  end

end
