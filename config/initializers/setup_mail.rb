unless Rails.env.test?
  ActionMailer::Base.smtp_settings = {
    :port =>           ENV['SMTP_PORT'],
    :address =>        ENV['SMTP_HOST'],
    :user_name =>      ENV['SMTP_USERNAME'],
    :password =>       ENV['SMPT_PASSWORD'],
    :domain =>         ENV['SMTP_DOMAIN'],
    :authentication => :plain,
    :enable_starttls_auto => true
  }

  ActionMailer::Base.delivery_method = :smtp
end
