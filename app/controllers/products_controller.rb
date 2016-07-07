class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    authenticate_user!
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    search = Product.search do
      with(:sex, Product.find(params[:shoe_type]).sex)
      with(:brand, Product.find(params[:shoe_type]).brand)
    end
    @similar = search.results
  end

  # GET /products/new
  def new
    authenticate_user!
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    authenticate_user!
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    authenticate_user!
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:shoe_type])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:vendor, :discount_status, :popular_status, :shoe_type1, :shoe_type2, :shoe_type3, :shoe_type4, :shoe_type5, :shoe_type6, :shoe_type7, :shoe_type8, :shoe_type9, :shoe_type10, :shoe_type11, :shoe_type12, :brand, :price, :season, :sex, :top_matereal, :pad_matereal, :sole_matereal, :shoe_type, :main_image, :first_image, :second_image, :third_image, :fourth_image, :fifth_image, :size_34, :size_35, :size_36, :size_37, :size_38, :size_39, :size_40, :size_41, :size_42, :size_43, :size_44, :size_45, :size_46, :size_47, :size_48)
    end
end
