require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    #fill_in("name", with: agent)
    params = {
      :name => "agent",
      favorite_food => "Green Eggs and Ham"
    }
    erb :food_form

  end



  # Add your post route and action below
  post '/food' do
    params.to_s
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"

  #   params = {
  #   :name => "Sam",
  #   :favorite_food => "Green Eggs and Ham"
  # }
      end
  end
