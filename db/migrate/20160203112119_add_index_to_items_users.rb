class AddIndexToItemsUsers < ActiveRecord::Migration
  def change
    add_index :items_users, :item_id
    add_index :items_users, :user_id
  end
end
