require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "add money to account" do
   amount = Transaction.create(name: "walmart", negotiation: 100.0)
     assert_equal 100.0 , amount.negotiation
  end


  test "get acount total" do
    assert_equal 250.0 , Transaction.total
  end
end
