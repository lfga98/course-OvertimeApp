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
  desc "Send mail notification to managers each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
      ManagerMailer.email(admin).deliver_now
    end
  end
end
