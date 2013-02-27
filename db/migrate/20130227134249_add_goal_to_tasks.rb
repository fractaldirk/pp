class AddGoalToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :goal, :string
  end
end
