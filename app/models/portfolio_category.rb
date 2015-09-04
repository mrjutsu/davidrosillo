class PortfolioCategory < ActiveRecord::Base
	has_many :portfolio_portfolio_categories
	has_many :portfolios, through: :portfolio_portfolio_categories
end
