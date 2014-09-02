class CreateStravaPanels < ActiveRecord::Migration
  def change
    create_table :strava_panels do |t|
      t.integer :athlete_id
      t.integer :activity_id
      t.string :name
      t.text :description
      t.float :distance
      t.interval :moving_time
      t.interval :elapsed_time
      t.string :type
      t.date :date
      t.integer :calories
    end
  end
end
