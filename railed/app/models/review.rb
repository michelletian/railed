class Review < ActiveRecord::Base
	belongs_to :user
	belong_to :bathroom
	validates :name, uniqueness: true, presence: true
	validates :rating, :in => 1..5
	validates :cleanliness, :in => 1..5
	validates :comfort, :in => 1..5
	validates :smell, :in => 1..5
	validates :availability, :in => 1..5
end
