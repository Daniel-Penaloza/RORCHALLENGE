class RemoveSummaryFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :summary
  end
end
