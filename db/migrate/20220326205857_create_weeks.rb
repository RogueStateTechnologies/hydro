class CreateWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weeks do |t|
      t.integer :phase_id
      t.integer :plan_id
      t.integer :feed_frequency

      t.timestamps
    end
  end
end
