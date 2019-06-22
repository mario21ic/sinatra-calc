require 'test/unit'

require './src/modules/Calc'

 
class MyCalcTest < Test::Unit::TestCase

  def setup
    @calc = Calc.new
  end

  def teardown
    @calc = nil
  end

  def test_add
    #calc = Calc.new
    assert_equal @calc.add(2, 5), 7
  end

end
