class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :bathroom
	# validates :rating, :in => 1..5
	# validates :cleanliness, :in => 1..5
	# validates :comfort, :in => 1..5
	# validates :smell, :in => 1..5
	# validates :availability, :in => 1..5
end
