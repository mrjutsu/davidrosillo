class AddAttachmentThumbnailToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :portfolios, :thumbnail
  end
end
