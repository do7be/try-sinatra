require 'test/unit'

require_relative './func'

class FuncTest < Test::Unit::TestCase

  def test_tomato_invalid
    assert_equal false, validate_tomato(name: 'do7be')
  end

  def test_tomato_valid
    assert_equal true, validate_tomato(name: 'tomato')
  end

end
