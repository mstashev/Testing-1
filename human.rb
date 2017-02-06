class Human
  attr_accessor :name,
                :alertness,
                :coffee,
                :drinks,
                :tea

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
    self.coffee = nil
    self.tea = nil
  end

  def has_coffee?
    if coffee != nil
      true
    else
      false
    end
  end

  def needs_coffee?
    if coffee == nil
      true
    else
      false
    end
  end

  def has_tea?
    if tea != nil
      true
    else
      false
    end
  end

  def needs_tea?
    if tea == nil
      true
    else
      false
    end
  end

  def buy(coffee)
      @coffee = coffee
  end

  def buy_tea(tea)
      @tea = tea
  end

  def drink!
    @alertness += 0.31
    coffee.drinks = coffee.drinks - 1
  end

  def drink_espresso!
    @alertness += 0.4
    coffee.drinks = coffee.drinks - 1
  end

  def drink_tea!
    @alertness += 0.25
    tea.drinks = tea.drinks - 1
  end

end
