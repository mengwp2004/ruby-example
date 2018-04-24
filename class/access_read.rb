#添加一个可 read 属性，在 class 外部只可 read 该实例变量（等同于通过 instance.arg 方法），而不可对该变量赋值（相当于调用 instance.arg= 方法不存在）
#attr_reader 的限定有点类似 C 中 int const * p的作用，限定的是变量，而非变量指向的对象
class C2
    attr_reader :name
    def initialize(name)
        @name =  {'a' => 1, 'b' => 2}
    end
end

t2 = C2.new( {'a' => 1, 'b' => 2})
puts t2.name                                      # 正确： {"a"=>1, "b"=>2}
puts (t2.name).delete('a')                        # 正确： attr_reader 保护的是变量 name ，但是变量 name 指向的对象内容是可变的
puts t2.name                                      # 正确： {"b"=>2}
puts t2.name = {'c' => 3}                         # 报错： undefined method `name=' for 
