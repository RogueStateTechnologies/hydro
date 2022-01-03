class CreateVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :variants do |t|
      t.string :name
      t.string :description
      t.integer :crop_id

      t.timestamps
    end
  end
end
