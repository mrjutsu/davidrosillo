class Category < ActiveRecord::Base
	has_many :subcategories
	has_many :posts

	scope :all_cats, -> { all }
end
