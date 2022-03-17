desc "Send out email reminders."
task reminder: :environment do
  SendRemindersJob.new.perform
end