class NotifierMailer < ApplicationMailer
  default from: 'tate.ray92@gmail.com',
    return_path: 'tate@tateray.com'

    def welcome(recipient)
      @account = recipient
      mail(to: recipient.email)
    end
end