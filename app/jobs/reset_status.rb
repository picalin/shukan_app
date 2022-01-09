# 使用するモデルファイルを読み込む
require "#{Rails.root}/app/models/shukan"
# 日付を取得する場合は、Dateクラスを使用します
require "date"
class ResetStatus
    # 読み込む場合はなぜかselfをつける必要性
    def self.reset
        # ShukansではなくShukan
        Shukan.all.each do |shukan|
            shukan.update(done: false)
            shukan.save
        end
        puts "doneステータスをリセットしました"
    end

    def datetime
        
    else
        
    end

    def self.hello
        puts "Hello World!"
    end
end