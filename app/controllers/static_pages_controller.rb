class StaticPagesController < ApplicationController
  def home
    @products = Product.all
  end

  def catalog
    @query = Product.search do
      fulltext params[:search]
      facet(:sex)
      facet(:price)
      facet(:brand)
      facet(:min_size)
      facet(:max_size)
      with(:sex, params[:sex]) if params[:sex].present?
      with(:brand, params[:brand]) if params[:brand].present?
      with(:price, params[:price]) if params[:price].present?
      range = (params[:min_price].to_i)..(params[:max_price].to_i)
      with(:price, range) if params[:min_price].present? || params[:max_price].present?
      #with(:size, params[:size]) if params[:size].present?
      #with(params[:size]).include?(:min_size..:max_size) if params[:size].present?
      with(params[:size]).between(:min_size..:max_size) if params[:size].present?
    end
    @products = @query.results
  end

  def about
  end

  def contacts
  end
end
