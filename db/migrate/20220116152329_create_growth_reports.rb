class CreateGrowthReports < ActiveRecord::Migration[6.1]
  def change
    create_table :growth_reports do |t|
      t.integer :height
      t.integer :num_of_branches
      t.integer :num_of_buds
      t.integer :plant_id
      t.integer :times_fed

      t.timestamps
    end
  end
end
