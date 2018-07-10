namespace :notification do
  desc "Send Sms notification to employees asking them to log if they had overtime"
  task sms: :environment do
    if Time.now.sunday?
      employees=Employee.all
      notification_message="Please log into the overtime management dashboard to request overtime or
      confirm that you did not have any over time url"
      employees.each do|emp|
        SmsTool.send_sms(number: emp.phone, message: notification_message)
      end
    end
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
end
