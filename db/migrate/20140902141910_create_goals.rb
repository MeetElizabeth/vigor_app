class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :description
      t.boolean :completed
      t.timestamps
      t.text :notes
      t.date :goal_date
    end
  end
end
