class CreateFitBitPanels < ActiveRecord::Migration
  def change
    create_table :fit_bit_panels do |t|
      t.float :total_distance
      t.integer :calories
      t.integer :steps
    end
  end
end
