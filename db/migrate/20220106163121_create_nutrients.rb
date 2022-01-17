class CreateNutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :nutrients do |t|
      t.string :name
      t.integer :plan_id
      t.integer :phase_id
      t.integer :amount_per_feeding

      t.timestamps
    end
  end
end