class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :kind
      t.string :by_whom
      t.text :description
      t.text :bdd
      t.date :finished_by
      t.integer :status

      t.timestamps
    end
  end
end
