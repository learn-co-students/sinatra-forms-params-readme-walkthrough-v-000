require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do
    @name, @favorite_food = params[:name], params[:favorite_food]
    "My name is #{@name}, and I love #{@favorite_food}"
  end


end
