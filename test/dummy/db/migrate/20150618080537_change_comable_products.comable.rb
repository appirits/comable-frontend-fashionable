# This migration comes from comable (originally 20131214194807)
class ChangeComableProducts < ActiveRecord::Migration
  def change
    change_table :comable_products do |t|
      t.timestamps
    end
  end
end
