class Portfolio < ActiveRecord::Base
	has_many :portfolio_categories
	has_many :categories, through: :portfolio_categories
end
