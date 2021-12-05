class CreateFeedPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :feed_plans do |t|

      t.string :name
      #  has many stages 
      t.integer :stages
      # how to calculate cost of a feed_plan?
      t.integer :plan_cost

      t.timestamps
    end
  end
end
