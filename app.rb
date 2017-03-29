require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below

  post '/food' do #NOTICE this is POST not GET. Get returns a fuckton of html :/
    #"Hi, #{params[:name]}! You've been redirected! Enjoy some #{params[:favorite_food]}."
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
end
