namespace :reset_task do
    task :reset_status => :environment do
        Shukan.all.each do |shukan|
            shukan.update(done: false)
            shukan.save
        end
        puts "doneステータスをリセットしました"
    end
end
