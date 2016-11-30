class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :notes
      t.string :name
      t.integer :posting_id

      t.timestamps
    end
  end
end
