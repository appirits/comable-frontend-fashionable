# This migration comes from comable (originally 20140926063541)
class ChangeComableStores < ActiveRecord::Migration
  def change
    change_table :comable_stores do |t|
      t.rename :email_sender, :email
      t.remove :email_activate_flag
      t.timestamps
    end
  end
end
