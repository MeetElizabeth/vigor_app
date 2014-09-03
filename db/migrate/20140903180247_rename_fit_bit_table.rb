class RenameFitBitTable < ActiveRecord::Migration
  def change
    rename_table :fit_bit_panels, :fitbit_panels
  end
end
