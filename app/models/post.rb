class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	after_save do
		self.clear_duplicates
	end

	belongs_to :category

	has_many :tags, dependent: :destroy

	accepts_nested_attributes_for :tags, :allow_destroy => true

	scope :by_category, -> (category_id) { where(category_id: category_id).order(created_at: :desc) }
	scope :recent, -> { last(5) }

	scope :search_posts, -> (search) { where("lower(name) LIKE ?","%#{search.downcase}%") }

	def post_tags
		self.tags.pluck(:name)
	end

	def clear_duplicates
	    tags = self.tags
	    grouped = tags.group_by { |c| [c.name] }
	    grouped.values.each do |g|
	      first = g.shift
	      g.each { |doble| doble.destroy }
	    end
	  end
end
