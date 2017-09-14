require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # post '/food' do
  #   "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
	# end
	
	post '/food' do
		@responses =  "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
		erb :result
  end

end
