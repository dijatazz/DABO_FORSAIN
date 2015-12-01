class Dish < ActiveRecord::Base
	has_one :recipe
	belongs_to :country
	belongs_to :category
end
