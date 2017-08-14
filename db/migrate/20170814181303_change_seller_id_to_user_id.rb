class ChangeSellerIdToUserId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :articles, :seller_id, :user_id
  end
end
