class Comment < ActiveRecord::Base
  belongs_to :forum
  attr_accessible :body, :commenter, :post_title, :post_link

  def activity
    "#{commenter} commented the following (#{created_at.strftime("%H:%M on %d %b %Y")}):"
  end
end
