class Dashboard < ActiveRecord::Base
  belongs_to :user
  has_one :strava_panel
  has_one :fitbit_panel
  has_many :goals

end
