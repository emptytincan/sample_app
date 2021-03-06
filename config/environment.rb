# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SampleApp::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV["sg_username"],
  :password => ENV["sg_password"],
  :domain => 'herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}