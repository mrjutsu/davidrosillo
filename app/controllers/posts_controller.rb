class PostsController < InheritedResources::Base

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

  private

    def post_params
      params.require(:post).permit(:name, :body, :category_id)
    end
end

