class Customer

  attr_reader :name, :wallet, :age, :drunkenness



def initialize(name, wallet, age, drunkenness)

  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end


def buy_drink(pub, drink)
  outcome = pub.sell_drink_legally(@age,@drunkenness, drink)
  if outcome != "Service refused"
    @wallet -= drink.price
    @drunkenness += drink.alcohol_level
  end
end








end
