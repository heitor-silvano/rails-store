require "test_helper"

class ProductMailerTest < ActionMailer::TestCase
  test "in_stock" do
    @product = params[:product]
    mail to: params[:subscriber].email

    assert_equal "In stock", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
