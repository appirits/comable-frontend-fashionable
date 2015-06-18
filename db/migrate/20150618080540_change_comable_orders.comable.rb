# This migration comes from comable (originally 20140723175431)
class ChangeComableOrders < ActiveRecord::Migration
  def change
    change_table :comable_orders do |t|
      t.rename :customer_id, :user_id

      t.remove :shipment_tracking_number
      t.remove :shipment_method
      t.remove :payment_method

      t.integer :payment_fee, null: false, default: 0

      t.timestamps
    end
  end
end
