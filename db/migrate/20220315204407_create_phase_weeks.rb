class CreatePhaseWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :phase_weeks do |t|

      t.timestamps
    end
  end
end
