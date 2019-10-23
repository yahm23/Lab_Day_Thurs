class Pub

  attr_reader :name, :till, :drinks

def initialize(name, till, drinks)

  @name = name
  @till = till
  @drinks = drinks

end


def sell_drink_legally(age,drunkenness, drink)
  if drink.alcohol_level != 0
    if drunkenness + drink.alcohol_level < 10
      if age > 17
        @till += drink.price
      else
        return "Service refused"
      end
    else
      return "Service refused"
    end
    else
      @till += drink.price
  end
end

end
