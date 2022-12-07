class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@musicevents.com"
  layout "mailer"
end
