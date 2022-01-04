class CreatePhases < ActiveRecord::Migration[6.1]
  def change
    create_table :phases do |t|
      t.string  :name
      t.integer :duration
      t.integer :plan_id
      t.text    :description
      t.integer :feed_frequency

      t.timestamps
    end
  end
end
