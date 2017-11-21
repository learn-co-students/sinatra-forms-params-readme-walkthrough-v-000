require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    # name
    # favorite_food
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"

  end
end
