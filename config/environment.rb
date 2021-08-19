# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   domain: 'localhost:3000',
#   #domain: 'www.rocketelevators.xyz',
#   address:        "smtp.sendgrid.net",
#   port:            587,
#   authentication: :plain,
#   #user_name:      ENV['SENDGRID_USERNAME'],
#   user_name:      'apikey',
#   password:       ENV['SENDGRID_API_KEY']
# }

ActionMailer::Base.smtp_settings = {
  user_name:      'apikey',
  #user_name:      ENV['SENDGRID_USERNAME'],
  #password:       ENV['SENDGRID_PASSWORD'],
  password:       ENV['SENDGRID_API_KEY'],
  #:password => Rails.application.secrets.SENDGRID_API_KEY,
  #domain:         'localhost:3000',
  domain:         'www.rocketelevators.xyz',
  address:        'smtp.sendgrid.net',
  port:            587,
  authentication: :plain,
  enable_starttls_auto: true
}