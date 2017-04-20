class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
    #or in case of dynamic
    # stream_from "room_channel-#{room.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    puts '--------inspecting--------'
    puts data.inspect
    Message.create content: data['message'],user: data['user']
  end

end
