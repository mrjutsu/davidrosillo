class PortfoliosController < InheritedResources::Base

	def index
		@portfolios = Portfolio.all.order(created_at: :desc)
	end

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :url, :description,
      									portfolio_categories_attributes: [:id,:name,:_destroy]
      									)
    end
end

