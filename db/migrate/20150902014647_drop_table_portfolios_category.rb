class DropTablePortfoliosCategory < ActiveRecord::Migration
  def change
  	drop_table :portfolio_categories_portfolios
  end
end
