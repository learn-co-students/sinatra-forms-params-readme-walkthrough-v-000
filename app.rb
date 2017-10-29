require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    "My name is #{params[:this_shit_transfers]}, and I love #{params[:fuck_shit]}"
  end
end
