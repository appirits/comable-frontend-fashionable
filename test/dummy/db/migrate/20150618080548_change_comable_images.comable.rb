# This migration comes from comable (originally 20150112173706)
class ChangeComableImages < ActiveRecord::Migration
  def change
    change_table :comable_images do |t|
      t.timestamps
    end
  end
end
