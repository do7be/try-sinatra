require 'sinatra'
require 'sinatra/reloader'

require_relative './func'

get '/' do
  'Hello world!'
end

get '/name/:name' do |name|
  "Hello #{name}!?"
end

get '/erb_template_page' do
  erb :erb_template_page
end

get '/markdown_template_page' do
  markdown :markdown_template_page
end

get '/erb_and_md_template_page' do
  erb :erb_and_md_template_page, :locals => { :md => markdown(:erb_and_md_template_page) }
end

get '/calc/*+*' do |num1, num2|
  result = num1.to_i + num2.to_i
  return result.to_s
end

get /\/calc\/([\d]+)-([\d]+)/ do |num1, num2|
  puts num1, num2
  (num1.to_i - num2.to_i).to_s
end

get '/puts/*' do |str|
  # コンソール出力
  puts "input is #{str}"
  return str
end

get '/bot', :agent => /googlebot/ do
  'you are google bot'
end

get '/bot' do
  'you are not google bot'
end

get '/gati/:name' do |name|
  validate_gati(name)
end
