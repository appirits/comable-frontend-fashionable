module Comable
  class ProductsController < Comable::ApplicationController
    before_filter :load_category_and_products, only: :index

    def index 
      @products = @products.page(params[:page]).per(::Product.per_name_by_id(params[:per])).reorder(::Product.order_by_entry_by_id(params[:order_by])[:sql])
      if :in_stock == ::Product.stock_key_by_id(params[:stock].to_i)
        @products = @products.joins(:stocks).merge(Comable::Stock.stocked)
      elsif :out_of_stock  == ::Product.stock_key_by_id(params[:stock].to_i)
	@products = @products.joins(:stocks).merge(Comable::Stock.unstocked)
      end
    end

    def show
      @product = Comable::Product.find(params[:id])
    end
    private

    def load_category_and_products
      @category = Comable::Category.where(id: params[:category_id]).first
      if @category
        subtree_of_category = Comable::Category.subtree_of(@category)
        @products = Comable::Product.eager_load(:categories).merge(subtree_of_category)
      else
        @products = Comable::Product.search(params[:q])
      end
    end
  end
end
