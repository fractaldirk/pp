class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.date :finished_by
      t.string :by_whom
      t.text :description
      t.string :deliverable
      t.string :extern_link

      t.timestamps
    end
  end
end
