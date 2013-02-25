class Task < ActiveRecord::Base
  attr_accessible :bdd, :by_whom, :description, :finished_by, :kind, :status, :title

  def status_output
    if status == 1
      "In progress"
    elsif status == 2
      "Completed"
    else
      "undefined"
    end
  end
  def kind_output
    if kind == 1
      "Development"
    elsif kind == 2
      "Other"
    else
      "Undefined"
    end
  end

  def by_whom_output
    User.find(:all, :conditions => {:id => by_whom}).map(&:user_name)
  end
end
