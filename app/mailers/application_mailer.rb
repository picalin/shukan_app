class ApplicationMailer < ActionMailer::Base
  default from: 'picalin',
          bcc:  's.hikaru.2125@gmail.com',
          replya_to: 's.hikaru.2125@gmail.com'
  layout 'mailer'
end
