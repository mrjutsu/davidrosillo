class PostsController < InheritedResources::Base

	def index
		
	end

  private

    def post_params
      params.require(:post).permit(:name, :body, :category_id)
    end
end

