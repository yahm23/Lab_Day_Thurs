require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestCustomer < MiniTest::Test


  def setup

    @customer1 = Customer.new("Yousef", 10)
    @customer2 = Customer.new("Morgaine", 20)
    @drink1 = Drink.new("beer", 2)
    @drink2 = Drink.new("wine", 4)
    @drink3 = Drink.new("coke", 3)

    @drinks = [@drink1, @drink2, @drink3]

    @pub = Pub.new("The Rubber Duck", 100, @drinks)


  end


  def test_customer_name
    assert_equal("Yousef", @customer1.name)
  end

  def test_customer_cash
    assert_equal(20, @customer2.wallet)
  end

  def test_buy_drink
    @customer1.buy_drink(@pub, @drink2)
    assert_equal(6, @customer1.wallet)
    assert_equal(104, @pub.till)
  end





end
