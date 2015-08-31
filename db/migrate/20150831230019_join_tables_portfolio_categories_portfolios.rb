class JoinTablesPortfolioCategoriesPortfolios < ActiveRecord::Migration
  def change
  	create_join_table :portfolio_categories, :portfolios
  end
end
