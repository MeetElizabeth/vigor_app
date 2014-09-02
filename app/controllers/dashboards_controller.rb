class DashboardsController < ApplicationController

  def index
    @weather = params[:search] ? Weather.search(params[:search]) : Weather.search('New York City')
  end

end
