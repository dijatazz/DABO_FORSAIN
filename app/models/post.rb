class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :dish

	validates :content, :presence => true, :length => { :maximum => 140 }
	validates :user_id, :presence => true

	default_scope :order => 'posts.created_at DESC'
end
