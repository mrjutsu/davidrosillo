json.array!(@portfolio_categories) do |portfolio_category|
  json.extract! portfolio_category, :id, :name
  json.url portfolio_category_url(portfolio_category, format: :json)
end
