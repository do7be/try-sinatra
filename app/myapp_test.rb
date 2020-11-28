require './myapp'
require 'test/unit'
require 'rack/test'

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
end
