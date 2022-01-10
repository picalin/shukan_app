namespace :reset_task do
    task :reset_status => :environment do
        puts "Updating Status"
        Shukan.all.each do |shukan|
            shukan.update(done: false)
            shukan.save
        end
        puts "done"
    end
end
