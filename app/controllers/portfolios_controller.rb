class PortfoliosController < InheritedResources::Base

	def index
		@portfolios = Portfolio.all.order(created_at: :desc)
		respond_to do |format|
			format.html {
				@portfolios
				render :index
			}
			format.js {
				@portfolios = @portfolios.to_a
				categories = []
				unless params[:category].nil?
					params[:category].each do |c|
						categories.push(c.to_i)
					end
				end
				if params[:category].nil?
					@portfolios
				else
					@portfolios.delete_if { |p| (p.portfolio_categories.pluck(:id) & categories).empty? }
					@portfolios.uniq!
				end
				@portfolios
			}
		end
	end

  private

    def portfolio_params
      params.require(:portfolio).permit(:name, :url, :description,
      									portfolio_categories_attributes: [:id,:name,:_destroy]
      									)
    end
end

