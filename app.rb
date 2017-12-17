require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
  erb :food_form
  end

  get '/food_form' do
    erb :food_form
  end

  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
end

    params = {
  :name => "Sam",
  :favorite_food => "Green Eggs and Ham"
}

  end
  # Add your post route and action below
