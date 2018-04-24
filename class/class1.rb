class C1
    def initialize(name)
        @name = name
    end
    
    def name
        @name
    end
    
    def name=(arg)
        @name=arg
    end
end

t1 = C1.new( {'a' => 1, 'b' => 2})
puts t1.name()                               #正确：调用 t1.name 方法
puts t1.name=( {'c' => 3, 'd' => 4} )        #正确：调用 t1.name= 方法
puts t1.name()                               #正确：{"c"=>3, "d"=>4}
