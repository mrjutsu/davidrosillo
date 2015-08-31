class SubcategoriesController < InheritedResources::Base

  private

    def subcategory_params
      params.require(:subcategory).permit(:name, :category_id)
    end
end

