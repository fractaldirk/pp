class Criterea < ActiveRecord::Base
  belongs_to :task
  attr_accessible :body
end
