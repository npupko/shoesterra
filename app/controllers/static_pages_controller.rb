class StaticPagesController < ApplicationController
  def home
    @products = Product.all
    @carousels = Carousel.all
  end

  def catalog
    @prod = Product.all
    @arr = []
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
      facet(:sex)
      facet(:price)
      facet(:brand)
      facet(:season)
      facet(:shoe_type)
      facet(:size_34)
      facet(:size_35)
      facet(:size_36)
      facet(:size_37)
      facet(:size_38)
      facet(:size_39)
      facet(:size_40)
      facet(:size_41)
      facet(:size_42)
      facet(:size_43)
      facet(:size_44)
      facet(:size_45)
      facet(:size_46)
      facet(:size_47)
      facet(:size_48)
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
      #with(params[:size]).between(:min_size..:max_size) if params[:size].present?
      paginate(page: params[:page], per_page: 16)
    end
    @products = @search.results
  end

  def about
  end

  def contacts
  end
end
