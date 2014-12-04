class Review < ActiveRecord::Base
	# attr_accessor :user_id, :bathroom_id, :overall_rating, :cleanliness, :comfort, :availability, :smell
	belongs_to :user
	belongs_to :bathroom
	validates_uniqueness_of :user_id, :scope => :bathroom_id
	validates_inclusion_of :overall_rating, :in => 1..5, allow_nil: true
	validates_inclusion_of :cleanliness, :in => 1..5, allow_nil: true
	validates_inclusion_of :comfort, :in => 1..5, allow_nil: true
	validates_inclusion_of :smell, :in => 1..5, allow_nil: true
	validates_inclusion_of :availability, :in => 1..5, allow_nil: true
end
