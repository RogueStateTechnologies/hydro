class CreatePlantReports < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_reports do |t|
      t.integer :plant_id
      t.references :reportable, polymorphic: true

      t.timestamps
    end
  end
end
