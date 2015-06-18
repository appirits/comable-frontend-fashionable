# This migration comes from comable (originally 20140723175810)
class ChangeComableOrderItems < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up   { rename_table :comable_order_details, :comable_order_items }
      dir.down { rename_table :comable_order_items, :comable_order_details }
    end

    change_table :comable_order_items do |t|
      t.timestamps
    end
  end
end
