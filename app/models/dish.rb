class Dish < ActiveRecord::Base
	belongs_to :cost
	belongs_to :difficulty
	belongs_to :country
	belongs_to :category
	has_many :posts
	has_one :recipe
end
