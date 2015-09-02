ActiveAdmin.register Subcategory do
	permit_params :name, :category_id

	index title: "Subcategories" do
		selectable_column
		id_column
		column :name
		column :category
		column :created_at
	end

	filter name:
	filter :category

	form html: { enctype: "multipart/form-data" } do |f|
		f.inputs "Post" do
			f.input :name
			f.input :category, as: :select, collection: Category.all.map { |x| [x.name,x.id] }
		end
		f.actions
	end

	show title: "Subcategory" do
		attributes_table do
			row :id
			row :created_at
			row :name
			row :category
		end
	end

end
