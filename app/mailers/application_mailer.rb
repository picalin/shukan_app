class ApplicationMailer < ActionMailer::Base
  default from: 'picalin',
          replya_to: 's.hikaru.2125@gmail.com'
          # bcc:  's.hikaru.2125@gmail.com'
  layout 'mailer'
end
