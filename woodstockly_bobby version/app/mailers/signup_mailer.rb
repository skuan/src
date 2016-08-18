class SignupMailer < ActionMailer::Base
  default from: "welcome@garage.io"

  def send_email(user)
  	@user = user
  	@url = "http://www.garage.io"

  	mail to: @user.email, subject: 'Welcome to Garage.io!'
  end

end
