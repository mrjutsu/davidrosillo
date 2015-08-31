require 'test_helper'

class PortfolioCategoriesControllerTest < ActionController::TestCase
  setup do
    @portfolio_category = portfolio_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolio_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio_category" do
    assert_difference('PortfolioCategory.count') do
      post :create, portfolio_category: { name: @portfolio_category.name }
    end

    assert_redirected_to portfolio_category_path(assigns(:portfolio_category))
  end

  test "should show portfolio_category" do
    get :show, id: @portfolio_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio_category
    assert_response :success
  end

  test "should update portfolio_category" do
    patch :update, id: @portfolio_category, portfolio_category: { name: @portfolio_category.name }
    assert_redirected_to portfolio_category_path(assigns(:portfolio_category))
  end

  test "should destroy portfolio_category" do
    assert_difference('PortfolioCategory.count', -1) do
      delete :destroy, id: @portfolio_category
    end

    assert_redirected_to portfolio_categories_path
  end
end
