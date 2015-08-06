# This migration comes from comable (originally 20140502060116)
class ChangeComableStocks < ActiveRecord::Migration
  def change
    change_table :comable_stocks do |t|
      t.timestamps
    end
  end
end
