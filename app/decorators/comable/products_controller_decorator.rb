Comable::ProductsController.class_eval do
  def index
    @products = @products.reorder(order_by)
    @products = @products.joins(:stocks).merge(filter_by_stocks)
    @products = @products.page(params[:page]).per(params[:per_page])
  end

  private

  def order_by
    Comable::Product.order_by.find_value(params[:order_by]).try(:value)
  end

  def filter_by_stocks
    value = Comable::Product.filter_by_stocks.find_value(params[:filter_by_stocks]).try(:value)
    value.call if value
  end
end
