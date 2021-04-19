class AddBlacklistToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :blacklist, :boolean
  end
end
