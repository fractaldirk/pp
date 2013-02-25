class Forum < ActiveRecord::Base
  attr_accessible :body, :extern_link, :poster, :title
end
