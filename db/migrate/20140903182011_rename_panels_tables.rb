class RenamePanelsTables < ActiveRecord::Migration
  def change
    rename_table :fitbit_panels, :fitbits
    rename_table :strava_panels, :stravas
    rename_table :goal_panels, :goals
  end
end
