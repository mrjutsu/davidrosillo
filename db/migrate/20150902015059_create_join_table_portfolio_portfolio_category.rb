class CreateJoinTablePortfolioPortfolioCategory < ActiveRecord::Migration
  def change
    create_table :portfolio_portfolio_categories, :id => false do |t|
      t.integer :portfolio_id
      t.integer :portfolio_category_id
    end
  end
end
