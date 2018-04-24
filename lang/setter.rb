
#!/usr/bin/ruby -w
 
# 定义类
class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
 
   # 访问器方法
   def getWidth
      @width
   end
   def getHeight
      @height
   end
 
   # 设置器方法
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end
 
# 创建对象
box = Box.new(10, 20)
 
# 使用设置器方法
box.setWidth = 30
box.setHeight = 50
 
# 使用访问器方法
x = box.getWidth()
y = box.getHeight()
 
puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"

