# This migration comes from comable (originally 20140120032559)
class ChangeComableUsers < ActiveRecord::Migration
  def change
    reversible do |dir|
      dir.up   { rename_table :comable_customers, :comable_users }
      dir.down { rename_table :comable_users, :comable_customers }
    end

    change_table :comable_users do |t|
      t.timestamps
    end
  end
end
