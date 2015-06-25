class Product < Comable::Product
  include ::SelectableAttr::Base
  self.selectable_attr_name_pattern = ''
    
  selectable_attr :per do
    entry 20, :_20, "20件" 
    entry 40, :_40, "40件" 
    entry 60, :_60, "60件" 
    entry 100, :_100, "100件" 
  end
  selectable_attr :order_by do
    entry 0, :newly, '新着順'           ,  sql: "comable_products.id DESC" 
    entry 1, :high_price, '価格が高い順',  sql: "price DESC"
    entry 2, :low_price, '価格が低い順' ,  sql: "price"
  end
  selectable_attr :stock do
    entry 0, :all, "すべて"           
    entry 1, :in_stock, "在庫ありのみ"     
    entry 2, :out_of_stock, "在庫なしのみ"  
  end 




end

