namespace :notification do
  desc "Send Sms notification to employees asking them to log if they had overtime"
  task sms: :environment do
    #Schedule To run at sunday at 5pm
    # Iterate over all the employees, not managers ort admins, skip admins users
    # Send a link tha has instructions and a link to log time
    #  User.all.each do |user|
    #    SmsTool.send_sms()
    #  end
  end

end