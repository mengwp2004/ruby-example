
#!/usr/bin/ruby
 
a = [1,2,3,4,5]
b = Array.new
b = a.collect{ |x|x+3 }
puts b

