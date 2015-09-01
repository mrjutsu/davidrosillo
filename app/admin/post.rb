ActiveAdmin.register Post do
	permit_params :name, :body, :category_id

	index title: "Posts" do
		selectable_column
		id_column
		column :name
		column "Category" do
			post.category.name
		end
		column :created_at
	end

	filter :name

	form html: { enctype: "multipart/form-data" } do |f|
		f.inputs "Post" do
			f.name
			f.category, as: :select, collection: Category.all.map { |x| [x.name,x.id] }
			f.body
		end
		f.actions
	end

	show title: "Post" do
		attributes_table do
			row :id
			row :created_at
			row :name
			row :category
			row :body
		end
	end

end
