class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|

      t.integer :crop_id
      t.integer :variant_id
      t.integer :medium_id
      t.integer :plan_id
      t.integer :phase_id
      t.date :start_date

      t.timestamps
    end
  end
end
