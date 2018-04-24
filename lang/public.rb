
#!/usr/bin/ruby -w
 
# 定义类
class Box
   # 构造器方法
   def initialize(w,h)
      @width, @height = w, h
   end
 
   # 实例方法默认是 public 的
   def getArea
      getWidth() * getHeight
   end
 
   # 定义 private 的访问器方法
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight
 
   # 用于输出面积的实例方法
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # 让实例方法是 protected 的
   protected :printArea
end
 
# 创建对象
box = Box.new(10, 20)
 
# 调用实例方法
a = box.getArea()
puts "Area of the box is : #{a}"
 
# 尝试调用 protected 的实例方法
box.printArea()

