class ApplicationMailer < ActionMailer::Base
  default from: 'bob.chamo@laposte.net'
  layout 'mailer'
end
