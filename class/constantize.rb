
class MyClass
   def initialize()
     puts 'init'
   end

   def self.[](hello)
     puts 'hello'
     "::MyClass::MySubClass".constantize.new()
   end
   
   class MySubClass < self 
      def handle()
           puts 'handle'
      end
   end
end

MyClass['sssss']
