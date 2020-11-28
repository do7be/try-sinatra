require 'test/unit'
require 'rack/test'

require_relative './myapp'

class SinatraHelloworldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_helloworld
    get '/'
    assert_equal 'Hello world!', last_response.body
  end

  def test_name_do7be
    get '/name/do7be'
    assert_equal 'Hello do7be!?', last_response.body
  end

  def test_calc_plus
    get '/calc/1+4'
    assert_equal '5', last_response.body
  end

  def test_calc_minus
    get '/calc/1-4'
    assert_equal '-3', last_response.body
  end

  def test_calc_minus_invalid
    get '/calc/1-a'
    assert_equal 404, last_response.status
  end
end
