namespace :email do
  desc "Send daily email"
  task send_daily_email: :environment do
    DailyMailer.daily_email.deliver_now
  end
end
