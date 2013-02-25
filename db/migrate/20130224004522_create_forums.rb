class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :poster
      t.text :body
      t.string :extern_link

      t.timestamps
    end
  end
end
