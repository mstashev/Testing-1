require 'minitest/autorun'

require './human'
require './tea'
require './coffee'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert(sherri.alertness.between?(0.1, 0.33))
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end

  def test_humans_can_drink_espresso
    chris = Human.new "Chris"
    tassk = Coffee.new("The Asskicker", drink = 1)
    chris.buy tassk

    chris.drink_espresso!
    assert tassk.empty?
    assert chris.alertness > 0.3
  end

  def test_humans_can_drink_tea
    emily = Human.new "Emily"
    refute emily.has_coffee?
    assert emily.needs_coffee?
    mast = Tea.new("McAlister's Sweet Tea")
    emily.buy_tea mast

    emily.drink_tea!

    while emily.alertness <= 2.0 do
      puts emily.alertness.inspect
      if mast.empty? == true
        emily.buy_tea mast
        emily.drink_tea!
      else
        emily.drink_tea!
      end
    end


    assert emily.alertness > 2.0
  end
end
