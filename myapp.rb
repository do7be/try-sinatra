require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/name/:name' do |name|
  "Hello #{name}!"
end
