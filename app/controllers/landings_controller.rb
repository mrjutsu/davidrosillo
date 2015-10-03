class LandingsController < ApplicationController
  def index
  	respond_to do |format|
		format.html {
			@posts = Post.all.order(created_at: :desc)
			render :index
		}
		format.js {
			if params[:p_filter] == "0"
				@posts = Post.all.order(created_at: :desc)
			else
				@posts = Post.by_category(params[:p_filter].to_i)
				@posts
			end
		}
	end
  end

  def search
	words = params[:search].split(' ')
	words.each do |w|
		@posts = []
		q = Post.search_posts(w)
		@posts += q
		c = Category.search_posts(w)
		@posts += c unless c.nil?
		t = Tag.search_posts(w)
		@posts += t unless t.nil?
		@posts.uniq!
	end
	render :search
  end

  def about
  end
end
