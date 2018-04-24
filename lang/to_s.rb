
#!/usr/bin/ruby -w
 
class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
   # 定义 to_s 方法
   def to_s
      "(w:#@width,h:#@height)"  # 对象的字符串格式
   end
end
 
# 创建对象
box = Box.new(10, 20)
 
# 自动调用 to_s 方法
puts "String representation of box is : #{box}"

