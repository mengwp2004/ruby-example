task :default => [:today]

namespace :home do

desc "任务1 -- 买菜"
task :purchaseVegetables do
puts "到沃尔玛去买菜。"
end

desc "任务2 -- 做饭"
task :cook => :purchaseVegetables do
puts "做一顿香喷喷的饭菜。"
end

desc "任务3 -- 洗衣服"
task :laundry do
puts "把所有衣服扔进洗衣机。"
end

end

desc "今天的任务"
task :today do
Rake::Task["home:cook"].invoke
Rake::Task["home:laundry"].invoke
end


