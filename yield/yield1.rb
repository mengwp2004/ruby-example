#yield is equal to block.call
def foo(&block)
    puts block.class
    puts block.to_s
    yield 1    
end

#function call
# Proc created using {} syntax
foo {|x| puts x}
