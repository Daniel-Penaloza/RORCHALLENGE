class RemoveUserIdFromArticles < ActiveRecord::Migration[5.1]
  def change
  	remove_column :articles, :user_id
  	add_column :articles, :seller_id, :integer
  end
end
