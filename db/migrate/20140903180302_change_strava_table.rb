class ChangeStravaTable < ActiveRecord::Migration
  def change
    remove_column :strava_panels, :description
    remove_column :strava_panels, :calories
    add_column :strava_panels, :city, :string
    add_column :strava_panels, :state, :string
    add_column :strava_panels, :country, :string
    add_column :strava_panels, :max_speed, :float
    add_column :strava_panels, :avg_speed, :float
  end
end
