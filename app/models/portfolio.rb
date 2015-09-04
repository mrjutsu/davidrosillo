class Portfolio < ActiveRecord::Base
	has_many :portfolio_categories
	has_many :portfolio_categories, through: :portfolio_categories

	accepts_nested_attributes_for :portfolio_categories, :reject_if => :all_blank, :allow_destroy => true
end
