require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do  #the controller receives the url from the client
    erb :food_form    #this yields the VIEW erb file
  end
  post "/food" do
    #params.to_s #shows what the params has looks like with both inputs from the form
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
  # Add your post route and action below

end
