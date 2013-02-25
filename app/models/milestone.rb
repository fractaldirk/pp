class Milestone < ActiveRecord::Base
  attr_accessible :by_whom, :deliverable, :description, :extern_link, :finished_by, :status

  def by_whom_output
    User.find(:all, :conditions => {:id => by_whom}).map(&:user_name)
  end
end
