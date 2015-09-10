class LandingsController < ApplicationController
  def index
  	respond_to do |format|
		format.html {
			@posts = Post.all.order(created_at: :desc)
			# @recent_posts = Post.find(:all, order: "id desc", limit: 5).reverse
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

  def about
  end
end
