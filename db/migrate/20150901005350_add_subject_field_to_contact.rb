class AddSubjectFieldToContact < ActiveRecord::Migration
  def change
  	add_column :contacts, :subject, :string
  end
end
