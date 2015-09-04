ActiveAdmin.register PortfolioCategory do
	permit_params :name

	remove_filter :portfolio_portfolio_categories
	remove_filter :name
	remove_filter :created_at
	remove_filter :updated_at

	index title: "Categories" do
		selectable_column
		id_column
		column :name
		column :created_at
		actions
	end

end
