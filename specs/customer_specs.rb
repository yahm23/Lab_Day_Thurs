require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestCustomer < MiniTest::Test


  def setup

    @customer1 = Customer.new("Yousef", 10, 17, 7)
    @customer2 = Customer.new("Morgaine", 20, 26, 5)
    @customer3 = Customer.new("John", 15, 17, 0)
    @drink1 = Drink.new("beer", 2, 1)
    @drink2 = Drink.new("wine", 4, 3)
    @drink3 = Drink.new("coke", 3, 0)

    @drinks = [@drink1, @drink2, @drink3]

    @pub = Pub.new("The Rubber Duck", 100, @drinks)

  end


  def test_customer_name
    assert_equal("Yousef", @customer1.name)
  end

  def test_customer_cash
    assert_equal(20, @customer2.wallet)
  end

  def test_buy_drink_legally
    @customer2.buy_drink(@pub, @drink2)
    assert_equal(16, @customer2.wallet)
    assert_equal(104, @pub.till)
  end

  def test_buy_drink_underage
    @customer1.buy_drink(@pub, @drink2)
    assert_equal(10, @customer1.wallet)#
    assert_equal(100, @pub.till)
  end


  def test_buy_drinks_safely
    @customer2.buy_drink(@pub,@drink2)
    assert_equal(104, @pub.till)
    assert_equal(8, @customer2.drunkenness)
  end

  def test_reject_drunk
    @customer1.buy_drink(@pub,@drink2)
    assert_equal(100, @pub.till)
    assert_equal(7, @customer1.drunkenness)#
  end

  def test_rejection_not_drunk_underage
    @customer3.buy_drink(@pub,@drink2)
    assert_equal(100, @pub.till)
    assert_equal(0, @customer3.drunkenness)
  end

  def test_underage_softdrink_buy
    @customer3.buy_drink(@pub,@drink3)
    assert_equal(103, @pub.till)
    assert_equal(0, @customer3.drunkenness)#
  end



end
