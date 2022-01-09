# 使用するモデルファイルを読み込む
require "#{Rails.root}/app/models/shukan"
class ResetStatus
    def self.reset
        Shukans.all.each do |shukan|
            shukan.update(done: false)
            shukan.save
        end
    end

    def self.hello
        puts "Hello World!"
    end
end