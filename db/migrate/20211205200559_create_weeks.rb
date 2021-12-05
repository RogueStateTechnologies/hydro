class CreateWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :weeks do |t|
      t.integer :stage
      # should default to created@
      t.date :start
      # should default to created@ + 7 days
      t.date :end

      t.timestamps
    end
  end
end
