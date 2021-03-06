# This migration comes from comable (originally 20140723175431)
class CreateComableOrders < ActiveRecord::Migration
  def change
    create_table :comable_orders do |t|
      t.references :customer
      t.string :guest_token
      t.string :code
      t.string :email
      t.integer :shipment_fee, null: false, default: 0
      t.string :shipment_tracking_number
      t.references :shipment_method
      t.references :payment_method
      t.integer :total_price
      t.references :bill_address
      t.references :ship_address
      t.string :state
      t.datetime :completed_at
    end

    add_index :comable_orders, :code, unique: true, name: :comable_orders_idx_01
  end
end
