class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :name

      t.timestamps
    end
  end
end
