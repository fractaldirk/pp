require 'test_helper'

class CommentsMailerTest < ActionMailer::TestCase
  test "activity_notice" do
    mail = CommentsMailer.activity_notice
    assert_equal "Activity notice", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
