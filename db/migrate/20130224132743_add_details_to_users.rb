class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_role, :integer
    add_column :users, :user_company, :string
  end
end
