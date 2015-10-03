ActiveAdmin.register Post do
	permit_params :name, :body, :description, :category_id, :tags, tags_attributes: [:name]

	index title: "Posts" do
		selectable_column
		id_column
		column :name
		column "Category" do |p|
			p.category.name
		end
		column :created_at
		actions
	end

	filter :name
	filter :category

	form html: { enctype: "multipart/form-data" } do |f|
		f.inputs @post do
			f.input :name
			f.input :category, as: :select, collection: Category.all.map { |x| [x.name,x.id] }
			f.has_many :tags, allow_destroy: true do |t|
				t.input :name
			end
			f.input :description
			f.input :body, as: :html_editor
		end
		f.actions
	end

	show title: "Post" do
		attributes_table do
			row :id
			row :created_at
			row :name
			row "Tags" do
				ul do
					post.tags.each do |t|
						li do
							t.name
						end
					end
				end
			end
			row :category
			row "Body" do
				raw post.body
			end
		end
	end

end
