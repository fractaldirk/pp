class CreateCritereas < ActiveRecord::Migration
  def change
    create_table :critereas do |t|
      t.string :body
      t.references :task

      t.timestamps
    end
    add_index :critereas, :task_id
  end
end
