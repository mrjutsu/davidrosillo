class PortfolioCategory < ActiveRecord::Base
	has_many :portfolio_categories
	has_many :portfolios, through: :portfolio_categories
end
