class AddDetailsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :post_title, :string
    add_column :comments, :post_link, :string
  end
end
