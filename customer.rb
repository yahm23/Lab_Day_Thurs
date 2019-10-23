class Customer

  attr_reader :name, :wallet, :age, :drunkenness



def initialize(name, wallet, age, drunkenness)

  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end


def buy_drink(pub, drink)
  if @drunkenness + drink.alcohol_level < 10
    if @age > 17
      @wallet -= drink.price
      pub.sell_drink_legally(@age, drink)
      @drunkenness += drink.alcohol_level
    end
  end
end








end
