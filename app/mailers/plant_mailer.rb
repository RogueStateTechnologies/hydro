class PlantMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_plant_email
    mail( to: 'tate@tateray.com', subject: "You Created a New Plant" )
  end
end
