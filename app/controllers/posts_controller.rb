class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:name, :body, :category_id)
    end
end

