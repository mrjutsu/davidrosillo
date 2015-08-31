class PortfoliosController < InheritedResources::Base

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :url, :description)
    end
end

