class PostsController < InheritedResources::Base
	before_filter :set_post, only: :show

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

	def show
		puts @post.inspect
	end

	private

		def set_post
			@post = Post.friendly.find(params[:id])
		end

	    def post_params
	      params.require(:post).permit(:name, :body, :category_id)
	    end
end

