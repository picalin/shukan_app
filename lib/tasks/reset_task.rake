namespace :reset_task do
    task :reset_status => :environment do
        puts "Updating Status"
        Shukan.all.each do |shukan|
            shukan.update(done: false)
            shukan.save
        end
        puts "done"
    end

    desc '決まった時間にリセットしたというメールを送る'
    task remind: :environment do
      users = User.all
  
      users.each do |user|
        RestMailer.remind(user).deliver
      end
    end
end
