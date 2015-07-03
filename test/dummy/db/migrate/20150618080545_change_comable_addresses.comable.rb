# This migration comes from comable (originally 20141024025526)
class ChangeComableAddresses < ActiveRecord::Migration
  def change
    change_table :comable_addresses do |t|
      t.rename :customer_id, :user_id
      t.timestamps
    end
  end
end
