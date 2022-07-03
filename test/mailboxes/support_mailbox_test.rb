require "test_helper"

class SupportMailboxTest < ActionMailbox::TestCase
  test "we create a SupportRequest when we get a support email" do
    recent_order = orders(:one)
    older_order = orders(:another_one)
    non_customer = orders(:other_customer)
        
    receive_inbound_email_from_mail(
      to: "support@example.com",
      from: "julianjose63@gmail.com",
      subject: "I need help!",
      body: "i dont find my service"
    )
    support_request = SupportRequest.last
    assert_equal "julianjose63@gmail.com", support_request.email
    assert_equal "I need help!", support_request.subject
    assert_equal "i dont find my service", support_request.body
    assert_equal recent_order, support_request.order  
  end
end
