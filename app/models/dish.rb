class Dish < ActiveRecord::Base
	has_one :recipe
	has_one :cost
	has_one :difficulty
	belongs_to :country
	belongs_to :category
end
