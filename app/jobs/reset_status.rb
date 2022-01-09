# 使用するモデルファイルを読み込む
require "#{Rails.root}/app/models/shukan"
class ResetStatus
    # 読み込む場合はなぜかselfをつける必要性
    def self.reset
        # ShukansではなくShukan
        Shukan.all.each do |shukan|
            shukan.update(done: false)
            shukan.save
        end
    end

    def self.hello
        puts "Hello World!"
    end
end