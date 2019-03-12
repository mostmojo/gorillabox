class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user
    @greeting = "Hi"
    mail(to: @user.email, subject: 'Welcome to GorillaBox')
    # This will render a view in `app/views/user_mailer`!
  end
end
