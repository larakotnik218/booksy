class AddBookSellerToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :book_seller, :string
  end
end
