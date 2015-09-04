class PortfolioCategory < ActiveRecord::Base
	has_many :portfolio_portfolio_categories
	has_many :portfolios, through: :portfolio_categories

	# scope :all_cat, -> { all.pluck(:name,:id) }
end
