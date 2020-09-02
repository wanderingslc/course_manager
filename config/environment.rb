# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['SENGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'radiant-dusk-23485.herokuapp.com/',
    :enable_starttls_auto => true
}