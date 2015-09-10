class Post < ActiveRecord::Base
  belongs_to :category

  scope :by_category, -> (category_id) { where(category_id: category_id).order(created_at: :desc) }
  scope :recent, -> { last(5) }
end
