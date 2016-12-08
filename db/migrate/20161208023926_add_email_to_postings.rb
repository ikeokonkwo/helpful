class AddEmailToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :email, :string
  end
end
