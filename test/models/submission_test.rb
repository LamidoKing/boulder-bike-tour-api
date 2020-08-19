require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase

  test "should have slogan not morethan 50 characters" do
    submission = submissions(:one)
    submission.slogan = "Validations are an important part when building any kind of application."
    assert_not submission.valid?
  end

  test "should have first_name" do
    submission = submissions(:one)
    submission.first_name = nil
    assert_not submission.valid?
  end

  test "should have last_name" do
    submission = submissions(:one)
    submission.last_name = nil
    assert_not submission.valid?
  end
  
  test "should have valid email" do
    submission = submissions(:one)
    submission.email = nil
    assert_not submission.valid?
  end

end
