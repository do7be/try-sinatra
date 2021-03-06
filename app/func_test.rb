require 'test/unit'

require_relative './func'

class FuncTest < Test::Unit::TestCase

  def test_tomato_invalid
    assert_equal false, is_tomato?(name: 'do7be')
  end

  def test_tomato_valid
    assert_equal true, is_tomato?(name: 'tomato')
  end

  def test_validate_equal
    assert_equal false, is_equal?(name2: 'do7be2', name1: 'do7be1')
  end

end
