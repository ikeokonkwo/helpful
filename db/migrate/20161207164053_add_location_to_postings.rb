class AddLocationToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :location, :string
  end
end
