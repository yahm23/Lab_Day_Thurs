class Pub

  attr_reader :name, :till, :drinks

def initialize(name, till, drinks)

  @name = name
  @till = till
  @drinks = drinks

end


def sell_drink_legally(age, drink)
  if age > 17
    @till += drink.price
  else
    return "Service refused"
  end
end









end
