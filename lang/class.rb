
#!/usr/bin/ruby -w
 
# 定义类
class Box
   # 构造函数
   def initialize(w,h)
      @width, @height = w, h
   end
 
   # 访问器方法
   def printWidth
      @width
   end
 
   def printHeight
      @height
   end
end
 
# 创建对象，初始化盒子的高度与宽度
box = Box.new(10, 20)
 
# 使用访问器方法
x = box.printWidth()
y = box.printHeight()
 
puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"

