class PortfolioCategory < ActiveRecord::Base
	has_many :portfolios
	has_many :portfolio_categories
end
