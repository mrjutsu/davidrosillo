class PostsController < InheritedResources::Base

	def index
		@posts = Post.all
	end

	def filter_posts
		
	end

  private

    def post_params
      params.require(:post).permit(:name, :body, :category_id)
    end
end

