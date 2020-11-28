require 'sinatra'
require 'sinatra/reloader'

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

get '/calc/*-*' do |num1, num2|
  (num1.to_i - num2.to_i).to_s
end
