class UserMailer < ActionMailer::Base
  default from: "jaredtphillips@me.com"

  def reservation_confirmation(user)
  	@user = user
  	email_with_name = "#{@user.name} <#{@user.email}>"
  	@url  = "http://localhost:3000"
  	mail(to: email_with_name, subject: "Your table has been saved!")
  end
end
