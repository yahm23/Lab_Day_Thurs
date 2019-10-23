require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub < MiniTest::Test


  def setup


    @customer1 = Customer.new("Yousef", 10, 17)
    @customer2 = Customer.new("Morgaine", 20, 26)
    @drink1 = Drink.new("beer", 2)
    @drink2 = Drink.new("wine", 4)
    @drink3 = Drink.new("coke", 3)

    @drinks = [@drink1, @drink2, @drink3]

    @pub = Pub.new("The Rubber Duck", 100, @drinks)


  end


  def test_pub_name
    assert_equal("The Rubber Duck", @pub.name)
  end

  def test_pub_till
    assert_equal(100, @pub.till)
  end

  def test_pub_drinks
    assert_equal(@drinks, @pub.drinks)
  end


  def test_service_refused
    @pub.sell_drink_legally(@customer1.age, @drink1)
    assert_equal(100, @pub.till)
  end


  def test_service_allowed
    @pub.sell_drink_legally(@customer2.age, @drink1)
    assert_equal(102, @pub.till)
  end





  end
