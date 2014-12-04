class Bathroom < ActiveRecord::Base
	has_many :review
	validates :name, uniqueness: true, presence: true
	validates_inclusion_of :rating, :in => 1..5, allow_nil: true
	validates_inclusion_of :cleanliness, :in => 1..5, allow_nil: true
	validates_inclusion_of :comfort, :in => 1..5, allow_nil: true
	validates_inclusion_of :smell, :in => 1..5, allow_nil: true
	validates_inclusion_of :availability, :in => 1..5, allow_nil: true
end
