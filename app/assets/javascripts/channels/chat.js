App.room = App.cable.subscriptions.create("ChatChannel", {
  connected: function() {},
  disconnected: function() {},
  received: function(data) {
    return $('#messages').append(data['message'] + '<br />');
  },
  speak: function(message) {
    return this.perform('speak', {
      message: message
    });
  }
});

$(document).on('keypress', '[data-behavior~=chat_speaker]', function(event) {
  if (event.keyCode === 13) {
    App.room.speak(event.target.value);
    event.target.value = "";
    return event.preventDefault();
  }
});
