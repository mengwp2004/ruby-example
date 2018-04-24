def foo()
    yield 1,2,3     # 这里的 1 2 3 就是传递的参数
end

#function call
foo {|x| puts x}        # => 1
foo {|x,y,z| puts z}    # => 3
foo {|x,y,z,k| puts k}  # 为空
