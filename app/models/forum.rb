class Forum < ActiveRecord::Base
  attr_accessible :body, :extern_link, :poster, :title
  validates_presence_of :poster, :title, :body
  has_many :comments, :dependent => :destroy
end
