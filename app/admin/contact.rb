ActiveAdmin.register Contact do

	# permit_params :name, :email, :subject, :body

	index title: "Contacts" do
		selectable_column
		id_column
		column :email
		column :subject
		column :created_at
		actions
	end

	filter :email
	filter :subject

	show title: "Contact" do
		attributes_table do
			row :id
			row :created_at
			row :email
			row :subject
			row :body
		end
	end

end
