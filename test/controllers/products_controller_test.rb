require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { brand: @product.brand, max_size: @product.max_size, min_size: @product.min_size, pad_matereal: @product.pad_matereal, price: @product.price, season: @product.season, sex: @product.sex, sole_matereal: @product.sole_matereal, top_matereal: @product.top_matereal, type: @product.type }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { brand: @product.brand, max_size: @product.max_size, min_size: @product.min_size, pad_matereal: @product.pad_matereal, price: @product.price, season: @product.season, sex: @product.sex, sole_matereal: @product.sole_matereal, top_matereal: @product.top_matereal, type: @product.type }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
