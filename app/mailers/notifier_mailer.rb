class NotifierMailer < ApplicationMailer
  default from: 'tate.ray92@gmail.com',
    return_path: 'tate@tateray.com'

    def welcome(address)
      mail(to: address)
    end
    
    def plant_reminder(destination)
      mail(to: destination)
    end
end
