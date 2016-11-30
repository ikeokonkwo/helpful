class CreatePostingCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :posting_categories do |t|
      t.integer :posting_id
      t.integer :category_id

      t.timestamps
    end
  end
end
