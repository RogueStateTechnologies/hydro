class SendRemindersJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Plant.where(next_notification_date: Date.today).each do |plant|
      NotifierMailer.plant_reminder(plant.user.email).deliver_now
      plant.update(next_notification_date: Date.today + 1.week)
    end
  end
end
