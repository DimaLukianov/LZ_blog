class CreateRefPostCategories < ActiveRecord::Migration
  def change
    create_table :ref_post_categories do |t|
        t.integer :post_id
        t.integer :category_id

      t.timestamps null: false
    end
  end
end
