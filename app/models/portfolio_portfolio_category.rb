class PortfolioPortfolioCategory < ActiveRecord::Base
	belongs_to :portfolio
	belongs_to :portfolio_category
end
