require 'dotenv'
Dotenv.load

Mailjet.configure do |config|
  config.api_key = ENV['MJ_APIKEY_PUBLIC']
  config.secret_key = ENV['MJ_APIKEY_PRIVATE'] 
  config.default_from = 'bob.chamo@laposte.net'
end
