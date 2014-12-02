class Review < ActiveRecord::Base
	validates :rating, :in => 1..5
	validates :cleanliness, :in => 1..5
	validates :comfort, :in => 1..5
	validates :smell, :in => 1..5
	validates :availability, :in => 1..5
	belongs_to :user
	belongs_to :bathroom
end
