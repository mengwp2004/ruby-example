
require 'net/http'
require 'uri'
require 'json'
require "open-uri" 

def balance()
      begin
        (open("http://127.0.0.1:8545" + '/cgi-bin/total.cgi').read.rstrip.to_f)
        #puts (open("http://127.0.0.1:80" + '/cgi-bin/total.cgi').read)
      rescue Exception => e 
         puts e.message 
         puts e.backtrace.join("\n")  
      end
end


def balance1

   #如果有GET请求参数直接写在URI地址中  
   uri = 'http://127.0.0.1/cgi-bin/demo' 
   uri = 'http://127.0.0.1/cgi-bin/total.cgi' 
   html_response = nil 
   open(uri) do |http|  
     html_response = http.read  
   end 
   puts html_response  
end
puts balance

