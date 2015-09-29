class TagsController < InheritedResources::Base

  private

    def tag_params
      params.require(:tag).permit(:post_id)
    end
end

