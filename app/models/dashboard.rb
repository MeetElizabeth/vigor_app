class Dashboard < ActiveRecord::Base
  belongs_to :user
  has_one :strava
  has_one :fitbit
  has_one :goal
end
