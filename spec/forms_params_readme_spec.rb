require 'spec_helper'

describe "App" do
  describe 'GET /food_form' do
    it "can fill in the form" do
      agent = "Carl Jr."
      food = "Vegan Black-Bean Burger"

      visit "/food_form"

      fill_in("name", with: agent)
      fill_in("favorite_food", with: food)

      expect(find_field('name').value).to eq agent
      expect(find_field('favorite_food').value).to eq food
    end
  end

  describe 'POST /food' do
    it 'responds with a 200' do
      post '/food'
      expect(last_response.status).to eq(200)
    end

    it 'displays the params' do
      params = {
        :name => "Carl",
        :favorite_food => "fried chicken"
      }

      post '/food', params

      expect(last_response.body).to eq("My name is #{params[:name]}, and I love #{params[:favorite_food]}")
    end
  end
end


# whats going on
# not notified of a delay - which became a cancellation
# happened multiple times to me before
# not rescheduling same day
# its 11AM - how are technicians not doing anything from now until end of business?
# overtime
# I got an early apt on purpose to give you time to get here bc of the terrible past experiences
# How often does this happen? Clearly a lot.
# what guarentee do i have that they will come tomorrow? Will I be called that morning confirming or denying service?
# 3rd time nobody has shown
# do you just not care - because you have a monopoly on isp service in certain areas?
# appreciate the fact that you aren't running dispatch
