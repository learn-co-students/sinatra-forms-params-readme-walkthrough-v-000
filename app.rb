require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do
    # @name = params[:name]
    # @favorite_food = params[:favorite_food]
    # "Your name is #{@name} and your fav foodie is #{@favorite_food}!"
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
end