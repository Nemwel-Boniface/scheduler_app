# Rails Email Scheduler with Whenever & Letter Opener

This is a demo Ruby on Rails app that automates the sending of daily emails using the [`whenever`](https://github.com/javan/whenever) gem for scheduling and [`letter_opener`](https://github.com/ryanb/letter_opener) for previewing emails in development.

It demonstrates how to send an email every weekday at 5:05 PM without manual triggers — no SMTP required in development.

---

## Features

- Scheduled task using `cron` via the `whenever` gem
- Daily email mailer with HTML template
- Preview emails in your browser using `letter_opener`
- Simple Rake task to trigger the mailer

---

## Setup Instructions

### 1. Clone the repo
```bash
git clone git@github.com:Nemwel-Boniface/scheduler_app.git
cd scheduler_app
```

### 2. Setup Database
Update your database.yml file by adding your username and password inside the development and test blocks as below:

```
username: nemwel
password: root
```

### 3. Instal dependables

Run `bundle` alias for `bundle install` to install dependacies into your application.


## Testing the functionality
### 1. Testing the emails manually

Run `rails email:send_daily_email`

### 2. Schedule the Task with Whenever
This project includes a pre-defined cron job in `config/schedule.rb`
```
every :weekday, at: '5:05 pm' do
  rake "email:send_daily_email"
end
```

To install it into your system's crontab: `whenever --update-crontab --set environment=development`

Then confirm it's installed: `crontab -l`

Logs are saved to: `log/cron.log`


## Notes
1. This setup is for development only.
2. letter_opener replaces actual email delivery with browser previews
3. No real emails are sent over the internet.


## Author

👤 **Nemwel Boniface**

- GitHub: [Nemwel-Boniface](https://github.com/Nemwel-Boniface)
- LinkedIn: [Nemwel Boniface](https://www.linkedin.com/in/nemwel-nyandoro/)


## Attached technical article
If you would like to follow along this repository with a worded step by step article, I wrote [this](https://dev.to/nemwelboniface/how-to-automate-daily-task-emails-in-rails-using-whenever-and-cron-724) article which you can follow along.