module ApplicationCable
  class Connection < ActionCable::Connection::Base

  	
  	def connect
      puts "socket connection"
    end

    def disconnect
      # Any cleanup work needed when the cable connection is cut.
    end

  end
end
