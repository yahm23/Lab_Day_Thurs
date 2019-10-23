class Customer

  attr_reader :name, :wallet, :age



def initialize(name, wallet, age)

  @name = name
  @wallet = wallet
  @age = age

end


def buy_drink(pub, drink)

  if @age > 17 
  @wallet -= drink.price
  pub.sell_drink_legally(@age, drink)
  end

end








end
