class PortfolioCategoriesController < InheritedResources::Base

  private

    def portfolio_category_params
      params.require(:portfolio_category).permit(:name)
    end
end

