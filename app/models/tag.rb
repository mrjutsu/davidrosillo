class Tag < ActiveRecord::Base
  belongs_to :post

  def self.search_posts (tag)
  	q = Tag.where("lower(name) LIKE ?","%#{tag.downcase}%")
  	unless q.empty?
  		ids = q.pluck(:post_id)
  		results = Post.find(ids)
  	end
  end

end
