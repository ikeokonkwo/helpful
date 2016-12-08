class AddPhoneToPostings < ActiveRecord::Migration[5.0]
  def change
    add_column :postings, :phone, :string
  end
end
