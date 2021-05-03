# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => 'email-smtp.us-east-2.amazonaws.com',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['AWS_USERNAME'],
    :password => ENV['AWS_PASSWORD'],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}