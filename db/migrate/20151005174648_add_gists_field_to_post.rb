class AddGistsFieldToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :gist, :string
  end
end
