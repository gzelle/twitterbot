set :environment, "development"
set :output, "/mnt/d/01_WORK/Krishna/cron_log.log"
env :PATH, ENV['PATH']

every 1.minute do # 1.minute 1.day 1.week 1.month 1.year is also supported
  runner "Bot.tweet"
end

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
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



#every 1.minute do # 1.minute 1.day 1.week 1.month 1.year is also supported
#  runner "Bot.tweet"
#end
#
#every 1.day, :at => '4:30 am' do
#  runner "MyModel.task_to_run_at_four_thirty_in_the_morning"
#end
#
#every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
#  runner "SomeModel.ladeeda"
#end
#
#every :sunday, :at => '12pm' do # Use any day of the week or :weekend, :weekday
#  runner "Task.do_something_great"
#end
#
#every '0 0 27-31 * *' do
#  command "echo 'you can use raw cron syntax too'"
#end
#
## run this task only on servers with the :app role in Capistrano
## see Capistrano roles section below
#every :day, :at => '12:20am', :roles => [:app] do
#  rake "app_server:task"
#end