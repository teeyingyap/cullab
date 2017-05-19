App.activity = App.cable.subscriptions.create "ActivityChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log(data['name'])
    $('.event:first').before "	<div class='event'><p>#{data['name']}</p><p>#{data['description']}</p></div>"

