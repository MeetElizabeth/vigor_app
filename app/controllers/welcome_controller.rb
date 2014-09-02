class WelcomeController < ApplicationController

  def index
    @client = Strava::Api::V3::Client.new(:access_token => "MY_ACCESS_TOKEN")
  end

end
