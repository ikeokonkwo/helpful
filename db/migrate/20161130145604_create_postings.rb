class CreatePostings < ActiveRecord::Migration[5.0]
  def change
    create_table :postings do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.text :description
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
