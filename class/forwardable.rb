class Queue 

  def initialize 
    @q = [] 
  end 
  
  def enq(*argument_list) 
    @q.push(*argument_list) 
  end 
 
  def deq(*argument_list) 
    @q.shift(*argument_list) 
  end 
end

q=Queue.new

q.enq(1,2,3,4)

puts q

q.deq()

puts q
