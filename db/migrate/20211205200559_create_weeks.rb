class CreateWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weeks do |t|
      t.date    :start_date
      t.date    :end_date
      t.integer :feed_plan
      t.integer :stage
      t.integer :plant
      t.string  :performance

      t.timestamps
    end
  end
end
