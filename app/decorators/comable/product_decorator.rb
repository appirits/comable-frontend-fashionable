Comable::Product.class_eval do
  extend Enumerize

  attr_accessor :per_page
  attr_accessor :order_by
  attr_accessor :filter_by_stocks

  enumerize :per_page, in: %w(
    20
    40
    60
    100
  ), default: 20

  enumerize :order_by, in: {
    newly: { id: :desc },
    high_price: { price: :desc },
    low_price: :price
  }, default: :newly

  enumerize :filter_by_stocks, in: {
    all: -> { Comable::Stock.all },
    in_stock: -> { Comable::Stock.stocked },
    out_of_stock: -> { Comable::Stock.unstocked }
  }, default: :all
end
