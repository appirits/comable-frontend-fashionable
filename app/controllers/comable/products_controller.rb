module Comable
  class ProductsController < Comable::ApplicationController
    before_filter :load_category_and_products, only: :index

    def index 
      @products = @products.page(params[:page]).per(::Product.per_name_by_id(params[:per])).order(::Product.order_by_entry_by_id(params[:order_by])[:sql])
      if :in_stock == ::Product.stock_key_by_id(params[:stock].to_i)
        @products = @products.joins(:stocks).where('quantity > 0')
      elsif :out_of_stock  == ::Product.stock_key_by_id(params[:stock].to_i)
	@products = @products.joins(:stocks).where('quantity <= 0')
      end
    end

    def show
      @product = Comable::Product.find(params[:id])
    end
    def top
      @products = Comable::Product.order("id DESC").limit(4)
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
