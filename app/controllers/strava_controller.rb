class StravaController < ApplicationController

  # Redirects user to Strava page for authentication
  def original_call
    id = ENV["STRAVA_CLIENT_ID"]
    uri = "http://localhost:3000"
    redirect_to "https://www.strava.com/oauth/authorize?client_id=#{id}&response_type=code&redirect_uri=#{uri}/token_exchange&scope=view_private"
    flash[:notice] = "Thank you for authorizing Strava."
  end

  # Exchanges token and returns basic user information
  def token_exchange
    id = ENV["STRAVA_CLIENT_ID"]
    secret = ENV["STRAVA_SECRET"]
    response = HTTParty.post("https://www.strava.com/oauth/token?client_id=#{id}&client_secret=#{secret}&code=#{params[:code]}")
    binding.pry

    # access_token = response["access_token"]
    # athlete_id = response["athlete"]["id"]
    # token_type = response["token_type"]
    #
    # url_base = "https://www.strava.com/api/v3/athlete/activities"
    # detailed_response = HTTParty.get("#{url_base}?per_page=1&access_token=#{access_token}")[0]
    #
    # strava_params = {
    #   name: detailed_response["name"],
    #   type: detailed_response["type"],
    #   activity_id: detailed_response["id"],
    #   city: detailed_response["location_city"],
    #   state: detailed_response["location_state"],
    #   country: detailed_response["location_country"],
    #   distance: detailed_response["distance"],
    #   moving_time: detailed_response["moving_time"],
    #   elapsed_time: detailed_response["elapsed_time"],
    #   max_speed: detailed_response["max_speed"],
    #   avg_speed: detailed_response["average_speed"]
    # }
    # return strava_params
  end

end
