class Portfolio < ActiveRecord::Base
	has_many :portfolio_portfolio_categories
	has_many :portfolio_categories, through: :portfolio_portfolio_categories

	accepts_nested_attributes_for :portfolio_portfolio_categories, :allow_destroy => true

	has_attached_file :avatar, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png", path: ":rails_root/public/system/:class/:attachment/:id/:filename"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :thumbnail, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png", path: ":rails_root/public/system/:class/:attachment/:id/:filename"
  	validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
