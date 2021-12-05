class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :strain
      # many to many realtionship
      t.integer :weeks
      #  has a Yield foreign key
      t.integer :yield
      # has a feed_plan foreign key
      t.integer :feed_plan

      t.timestamps
    end
  end
end
