class Tea

  attr_accessor :tea,
                :full,
                :empty,
                :drinks

  def initialize(tea, drinks = 4, full = true, empty = false)
    @tea = tea
    @full = full
    @empty = empty
    @drinks = drinks
  end

  def full?
    if @drinks == 4
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
