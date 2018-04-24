#method receives an invisible block argument
def foo1()
    yield 1
end

#specify it explicitly
def foo2(&block)
    yield 1,2,3
end

#yield is equal to block.call
def foo3(&block)
    block.call(1)    
end

#function call
foo1 {|x| puts x}    # => 1
foo2 {|x| puts x}    # => 1
foo3 {|x| puts x}    # => 1
