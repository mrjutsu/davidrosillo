class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	belongs_to :category

	has_many :tags, dependent: :destroy

	accepts_nested_attributes_for :tags, :allow_destroy => true

	scope :by_category, -> (category_id) { where(category_id: category_id).order(created_at: :desc) }
	scope :recent, -> { last(5) }

	scope :search_posts, -> (search) { where("lower(name) LIKE ?","%#{search.downcase}%") }

	def post_tags
		self.tags.pluck(:name)
	end

	def self.tweet (tweet)
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
		  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		  config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
		end
		client.update("This is a test tweet")
	end
end
