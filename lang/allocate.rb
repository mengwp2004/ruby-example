
#!/usr/bin/ruby -w
 
# 定义类
class Box
   attr_accessor :width, :height
 
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
 
   # 实例方法
   def getArea
      @width * @height
   end
end
 
# 使用 new 创建对象
box1 = Box.new(10, 20)
 
# 使用 allocate 创建两一个对象
box2 = Box.allocate
 
# 使用 box1 调用实例方法
a = box1.getArea()
puts "Area of the box is : #{a}"
 
# 使用 box2 调用实例方法
a = box2.getArea()
puts "Area of the box is : #{a}"

