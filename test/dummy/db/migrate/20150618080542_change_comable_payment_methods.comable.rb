# This migration comes from comable (originally 20140817194104)
class ChangeComablePaymentMethods < ActiveRecord::Migration
  def change
    change_table :comable_payment_methods do |t|
      t.integer :fee, null: false, default: 0
      t.timestamps
    end
  end
end
