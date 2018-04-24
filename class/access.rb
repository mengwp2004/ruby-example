class Test
attr_accessor :name

def initialize()
@name = "test attr"
end
end

t= Test.new
puts t.name
t.name = "test attr modify"
puts t.name 
