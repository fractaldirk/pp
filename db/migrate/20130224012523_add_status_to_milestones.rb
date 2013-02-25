class AddStatusToMilestones < ActiveRecord::Migration
  def change
    add_column :milestones, :status, :integer
  end
end
