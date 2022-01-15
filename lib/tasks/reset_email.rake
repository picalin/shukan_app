namespace :reset_email do
    desc '決まった時間にリセットしたというメールを送る'
    task remind: :environment do
      users = User.all
  
      users.each do |user|
        RestMailer.remind(user).deliver
      end
    end
end
