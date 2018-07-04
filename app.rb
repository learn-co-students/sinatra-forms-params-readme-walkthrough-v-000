require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
    puts "test"
  end

  # Add your post route and action below
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
end
