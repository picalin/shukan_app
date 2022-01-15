class RestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rest_mailer.remind.subject
  #
  def remind(user)
    @user = user
    @greeting = "Hi"

    mail to: "#{@user.email}", subject: "Hello, #{@user.nickname}, your today's shukan is reset"
  end
end
