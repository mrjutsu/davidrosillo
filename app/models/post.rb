class Post < ActiveRecord::Base
	belongs_to :category

	has_many :tags

	accepts_nested_attributes_for :tags, :allow_destroy => true

	scope :by_category, -> (category_id) { where(category_id: category_id).order(created_at: :desc) }
	scope :recent, -> { last(5) }

	def post_tags
		self.tags.pluck(:name)
	end
end
