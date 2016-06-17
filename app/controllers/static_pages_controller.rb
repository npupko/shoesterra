class StaticPagesController < ApplicationController
  def home
    @products = Product.all
  end

  def catalog
  end

  def about
  end

  def contacts
  end
end
