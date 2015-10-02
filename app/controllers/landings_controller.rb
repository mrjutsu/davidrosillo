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
  	respond_to do |format|
  		format.js {
  			@posts = Post.search_posts(params[:search])
  		}
  	end
  end

  def about
  end
end
