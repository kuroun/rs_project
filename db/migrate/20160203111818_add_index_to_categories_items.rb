class AddIndexToCategoriesItems < ActiveRecord::Migration
  def change
    add_index :categories_items, :category_id
  end
end
