require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original = params["string"]
    @reverse_str = original.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Sabrina', 'Tian Mei', 'Mandy', 'India', 'Malala Yousafzai']
    erb :friends
  end
end