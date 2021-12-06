class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string  :strain
      t.integer :yield
      t.integer :feed_plan

      t.timestamps
    end
  end
end
