# This migration comes from comable (originally 20140921191416)
class ChangeComableShipmentMethods < ActiveRecord::Migration
  def change
    change_table :comable_shipment_methods do |t|
      t.rename :activate_flag, :activated_flag
      t.timestamps
    end
  end
end
