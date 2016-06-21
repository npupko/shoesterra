class StaticPagesController < ApplicationController
  def home
    @products = Product.all
  end

  def catalog
    @query = Product.search do
      fulltext params[:search]
    end
    @products = @query.results
  end

  def about
  end

  def contacts
  end
end
