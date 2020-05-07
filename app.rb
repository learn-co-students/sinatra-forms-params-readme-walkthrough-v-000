require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    @food_form = params[:food_form]
    erb :food_form
  end

  post '/food' do
    @name = params[:name].to_s
    @favorite_food = params[:favorite_food].to_s
    # params = {
  # :name => "Sam",
  # :favorite_food => "Green Eggs and Ham"
  # }
  "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end


  # Add your post route and action below

end
