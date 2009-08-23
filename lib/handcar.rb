require 'socket'

module Handcar
  protected
    def honk(msg = nil)
      begin
        sock = TCPSocket.open('localhost', 2000)
        sock.write({:date => Time.now.strftime('%H:%M:%S'), :body => msg, :class => msg.class.to_s}.to_json)
      rescue Errno::ECONNREFUSED
        true      
      ensure
        sock.close if sock      
      end
    end
    
    def self.included(base)
      base.send :helper_method, :honk
    end

end
