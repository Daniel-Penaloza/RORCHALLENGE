class RenameTableArticlesToProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_table :articles, :products
  end
end
