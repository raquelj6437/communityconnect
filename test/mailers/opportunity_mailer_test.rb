require "test_helper"

class OpportunityMailerTest < ActionMailer::TestCase
  test "new_opportunity" do
    mail = OpportunityMailer.new_opportunity
    assert_equal "New opportunity", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
