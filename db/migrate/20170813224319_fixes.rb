class Fixes < ActiveRecord::Migration[5.1]
  def change
  	remove_column :articles, :integer
  end
end
