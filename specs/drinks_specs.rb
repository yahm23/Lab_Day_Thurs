require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestDrinks < MiniTest::Test

  def setup

    @customer1 = Customer.new("Yousef", 10, 17, 0)
    @customer2 = Customer.new("Morgaine", 20, 26, 5)
    @drink1 = Drink.new("beer", 2, 1)
    @drink2 = Drink.new("wine", 4, 3)
    @drink3 = Drink.new("coke", 3, 0)

    @drinks = [@drink1, @drink2, @drink3]

    @pub = Pub.new("The Rubber Duck", 100, @drinks)




  end

  def test_drink_name
    assert_equal("wine", @drink2.name)
  end

  def test_drink_price
    assert_equal(3, @drink3.price)
  end



end
