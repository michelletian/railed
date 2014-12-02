class Review < ActiveRecord::Base
	belongs_to :trainer
	belong_to :bathroom
	validates :name, uniqueness: true, presence: true
end
