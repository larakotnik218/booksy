class AddAvatarToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :avatar, :string
  end
end
