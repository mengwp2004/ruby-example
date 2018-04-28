puts self    #main
puts self.class #Object
def self.method_missing(name,*arg)
    puts "#{name} is not exist!"
end
puts ask   #ask is not exist!
