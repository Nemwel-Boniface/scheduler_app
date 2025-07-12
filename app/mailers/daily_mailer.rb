class DailyMailer < ApplicationMailer
  def daily_email
    mail(to: "nemwelboniface@outlook.com", subject: "Hello Nemwel! This is your daily update at 5:05 PM.")
  end
end
