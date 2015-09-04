ActiveAdmin.register Portfolio do
	permit_params :name, :url, :description, :portfolio_categories, portfolio_category_ids: []

	index title: "Portfolios" do
		selectable_column
		id_column
		column :name
		column :created_at
	end

	filter :name

	form html: { enctype: "multipart/form-data" } do |f|
		f.inputs "Portfolio" do
			f.input :name
			f.input :url
			# f.input :category_ids, as: :check_boxes, collection: Category.all.map { |x| [x.name,x.id] }
			f.input :portfolio_category_ids, as: :check_boxes, collection: PortfolioCategory.all.map { |x| [x.name, x.id] }, checked: true
			# f.input :subcategory_ids, as: :select, collection: Subcategory.all.map { |x| [x.name,x.id] }
			f.input :description
		end
		f.actions
	end

	show title: "Portfolio" do
		attributes_table do
			row :id
			row :created_at
			row :name
			row :url
			row :category
			row :subcategory
			row :description
		end
	end

end
