class UserMailer < ActionMailer::Base
  default from: "joshua.paul@uconn.edu"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"

    mail to: "to@example.org", subject: "Thank you for joining PDX Twitter"
  end
end
