class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.float :price
      t.string :summary
      t.string :description
      t.integer :user_id
      t.string :category_id
      t.string :integer

      t.timestamps
    end
  end
end
