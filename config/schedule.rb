# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# 絶対パスから相対パス指定
env :PATH, ENV['PATH']
# ログファイルの記述
set :output, "log/cron.log"
# ジョブの実行環境の指定
set :environment, :development

# every 1.days, at: '9:00 am' do
every 1.minutes do
    # runner 'puts "Hello World!"'
    # runner 'ResetStatus.hello'
    rake 'reset_task:reset_status'
end
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
