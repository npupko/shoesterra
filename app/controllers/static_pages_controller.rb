class StaticPagesController < ApplicationController
  def home
    @products = Product.all
    @carousels = Carousel.all
    a = Date.parse("Jan 5 2012")
    b = Date.parse("Jan 5 2012")
  end

  def catalog
    @prod = Product.all
    @arr = [] #Для списка брендов
    @prod.each do |p|
      @arr[@arr.size] = p.brand
    end
    @arr = @arr.uniq
    true_shoe_type = [params[:shoe_type1], 
                       params[:shoe_type2],
                       params[:shoe_type3],
                       params[:shoe_type4],
                       params[:shoe_type5],
                       params[:shoe_type6],
                       params[:shoe_type7],
                       params[:shoe_type8],
                       params[:shoe_type9],
                       params[:shoe_type10],
                       params[:shoe_type11], 
                       params[:shoe_type12]]
    compact_shoe_type = true_shoe_type.compact
    @search = Product.search do
      fulltext params[:search]
      with(:sex, params[:sex]) if params[:sex].present?
      with(:brand, params[:brand]) if params[:brand].present?
      with(:price, params[:price]) if params[:price].present?
      range = (params[:min_price].to_i)..(params[:max_price].to_i)
      with(:price, range) if params[:min_price].present? || params[:max_price].present?
      case params[:size]
        when '35'
          with(:size_35, true)
        when '36'
          with(:size_36, true)
        when '37'
          with(:size_37, true)
        when '38'
          with(:size_38, true)
        when '39'
          with(:size_39, true)
        when '40'
          with(:size_40, true)
        when '41'
          with(:size_41, true)
        when '42'
          with(:size_42, true)
        when '43'
          with(:size_43, true)
        when '44'
          with(:size_44, true)
        when '45'
          with(:size_45, true)
        when '46'
          with(:size_46, true)
        when '47'
          with(:size_47, true)
        when '48'
          with(:size_48, true)
      end
      with(:season, params[:season]) if params[:season].present?
      with(:shoe_type).any_of(compact_shoe_type)
      order_by(:priority, :desc)
      paginate(page: params[:page], per_page: 16)
    end
    @products = @search.results
  end

  def about
    @news_search = News.search do
      #fulltext params[:search]
      with(:news_type, params[:news_type]) if params[:news_type].present?
      paginate(page: params[:page], per_page: 8)
    end
    @news = @news_search.results
  end

  def contacts
  end
end
