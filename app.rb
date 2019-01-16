require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  
  #Every form also needs a corresponding route in the controller file (app.rb).
  #Instead of a get route (which we used to route users to view an html page),
  #we'll set up a post route:
  post '/food' do
    #params.to_s
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
end
