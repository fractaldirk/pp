class AddTitleToForums < ActiveRecord::Migration
  def change
    add_column :forums, :title, :string
  end
end
