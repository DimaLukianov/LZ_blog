class CreateSubcomments < ActiveRecord::Migration
  def change
    create_table :subcomments do |t|
      t.integer :comment_id
      t.text :text

      t.timestamps null: false
    end
  end
end
