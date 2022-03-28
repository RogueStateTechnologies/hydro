class CreatePlantDates < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_dates do |t|
      t.integer :plant_id
      t.string  :date_type
      t.date    :on_date
      t.text    :notes

      t.timestamps
    end
  end
end
