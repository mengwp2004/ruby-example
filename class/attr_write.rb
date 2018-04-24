#添加一个可 write 属性，在 class 外部只可 write 该实例变量
class C3
    attr_writer :name
    def initialize(name)
        @name = name
    end
end

t3 = C3.new( {'a' => 1, 'b' => 2})
puts t3.name                           # 报错：undefined method `name' for #<Context::C3:0x0000000140afc8 @name={:a=>1, :b=>2}>
puts t3.name = {'c' => 3}              # 正确：{"c"=>3}
puts t3
