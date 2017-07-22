require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "sendmail_pct" do
    mail = NoticeMailer.sendmail_pct
    assert_equal "Sendmail pct", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
