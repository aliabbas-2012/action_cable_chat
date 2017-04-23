App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected:(data) ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log data['message']
    $('ul.list-group.messages').append data['message']

  speak:(message) ->
    @perform 'speak',message: message

  #custom helper method  
  send_message: ()->
    App.room.speak($('#message_content').val())
    $('#message_content').val('');



#    eg.
#    App.room.speak("hello")
