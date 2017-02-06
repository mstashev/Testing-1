class Coffee

  attr_accessor :coffee,
                  :full,
                  :empty,
                  :drinks

  def initialize(coffee, drinks = 3, full = true, empty = false)
    @coffee = coffee
    @full = full
    @empty = empty
    @drinks = drinks
  end

  def full?
    if @drinks == 3
      true
    else
      false
    end
  end

  def empty?
    if @drinks == 0
      true
    else
      false
    end
  end

end
