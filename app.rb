require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    # :name
    # :favorite_food
    erb :food_form

  end

  # Add your post route and action below
  post '/food' do
    params[:name].to_s
    params[:favorite_food].to_s
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end

end
