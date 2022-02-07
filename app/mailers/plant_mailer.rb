# frozen_string_literal: true

class PlantMailer < ApplicationMailer
  default from: 'tate.ray92@gmail.com'


  def new_plant_email
    mail(to: 'tate@tateray.com', subject: 'You Created a New Plant')
  end
end
