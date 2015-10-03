class Category < ActiveRecord::Base
	has_many :subcategories
	has_many :posts

	scope :all_cats, -> { all }

	def self.search_posts (search)
		q = Category.where("lower(name) LIKE ?","%#{search.downcase}%").first
		unless q.nil?
			q.posts.to_a unless q.nil?
		end
	end
end
