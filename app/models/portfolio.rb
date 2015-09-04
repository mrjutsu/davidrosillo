class Portfolio < ActiveRecord::Base
	has_many :portfolio_portfolio_categories
	has_many :portfolio_categories, through: :portfolio_portfolio_categories

	accepts_nested_attributes_for :portfolio_portfolio_categories, :allow_destroy => true
end
