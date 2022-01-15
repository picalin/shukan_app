# Preview all emails at http://localhost:3000/rails/mailers/rest_mailer
class RestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/rest_mailer/remind
  def remind
    RestMailer.remind(User.first)
  end

end
