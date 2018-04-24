
#!/usr/bin/ruby -w
 
class Box
   # 初始化类变量
   @@count = 0
   def initialize(w,h)
      # 给实例变量赋值
      @width, @height = w, h
 
      @@count += 1
   end
 
   def self.printCount()
      puts "Box count is : #@@count"
   end
end
 
# 创建两个对象
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)
 
# 调用类方法来输出盒子计数
Box.printCount()

