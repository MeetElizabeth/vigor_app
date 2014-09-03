class RenameGoalsPanel < ActiveRecord::Migration
  def change
    rename_table :goals, :goal_panels
  end
end
