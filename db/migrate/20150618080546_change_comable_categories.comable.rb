# This migration comes from comable (originally 20150111031228)
class ChangeComableCategories < ActiveRecord::Migration
  def change
    change_table :comable_categories do |t|
      t.timestamps
    end
  end
end
