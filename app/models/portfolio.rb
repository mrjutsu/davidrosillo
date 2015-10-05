class Portfolio < ActiveRecord::Base
	has_many :portfolio_portfolio_categories
	has_many :portfolio_categories, through: :portfolio_portfolio_categories

	accepts_nested_attributes_for :portfolio_portfolio_categories, :allow_destroy => true

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumbnail => "360", :ipadthumbnail => "820", :ipadshow => "1024", :phonethumb => "600", :phoneshow => "736" }, :default_url => "/images/:style/missing.png", :storage => :s3, :bucket => 'davidrosillo', :url => ':s3_domain_url', :path => '/:class/:attachment/:id_partition/:style/:filename', :s3_protocol => 'https'
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :thumbnail, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
