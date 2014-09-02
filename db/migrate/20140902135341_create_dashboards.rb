class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.references :users
      t.references :strava_panels
      t.references :fitbit_panels
    end
  end
end
