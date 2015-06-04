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

  test "get account count" do
    assert_equal 2, Transaction.count
  end

  test "get amount spent this month" do
    petsmart = Transaction.create(name: "PetSmart", negotiation: -200)
    starbucks = Transaction.create(name: "Starbucks", negotiation: -100)
    paycheck = Transaction.create(name: "Job", negotiation: 50)
    assert_equal -200, petsmart.negotiation
    assert_equal -300, Transaction.spent_this_month
  end

  test "get date to work please :-)" do
    petsmart = Transaction.create(name: "PetSmart", negotiation: -200)
    starbucks = Transaction.create(name: "Starbucks", negotiation: -100)
    paycheck = Transaction.create(name: "Job", negotiation: 50)
    assert_equal Time.now.month, petsmart.created_at.month
  end

  test "get biggest expense" do
    petsmart = Transaction.create(name: "PetSmart", negotiation: -200)
    starbucks = Transaction.create(name: "Starbucks", negotiation: -100)
    paycheck = Transaction.create(name: "Job", negotiation: 50)
    assert_equal "PetSmart", Transaction.biggest_expense
  end
end
