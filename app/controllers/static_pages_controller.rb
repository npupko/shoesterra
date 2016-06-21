class StaticPagesController < ApplicationController
  def home
    @products = Product.all
  end

  def catalog
    @query = Product.search do
      fulltext params[:search]
      facet(:sex)
      facet(:price)
      facet(:min_size)
      facet(:max_size)
      with(:sex, params[:sex]) if params[:sex].present?
      with(:price, params[:price]) if params[:price].present?
      with(:min_size, greater_than(params[:min_size])) if params[:min_size].present?
    end
    @products = @query.results
  end

  def about
  end

  def contacts
  end
end
