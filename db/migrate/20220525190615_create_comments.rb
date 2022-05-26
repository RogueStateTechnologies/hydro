class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_type
      t.string :user_id
      t.string :notification_id
      t.string :report_id
      t.string :plant_id

      t.timestamps
    end
  end
end
