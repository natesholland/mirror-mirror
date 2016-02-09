require 'sinatra'
require 'json'
require 'pry'

get '/' do
  erb :index
end

get '/time' do
  content_type :json
  { time: Time.now }.to_json
end

get '/day' do
  content_type :json
  days = %w( Sunday Monday Teusday Wednesday Thursday Friday Saturday )
  { day: days[Time.now.wday] }.to_json
end

