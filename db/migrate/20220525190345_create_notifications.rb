class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :notification_type
      t.date :notification_date

      t.timestamps
    end
  end
end
