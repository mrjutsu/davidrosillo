ActiveAdmin.register Category do
	permit_params :name

	index title: "Categories" do
		selectable_column
		id_column
		column :name
		actions
	end

	filter :name

	show title: "Category" do
		attributes_table do
			row :id
			row :name
		end
	end
end
