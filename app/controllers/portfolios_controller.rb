class PortfoliosController < InheritedResources::Base

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :url, :description,
      									portfolio_categories_attributes: [:id,:name,:_destroy]
      									)
    end
end

