function subscribe(chatId) {
  App.room = App.cable.subscriptions.create({channel: "ChatChannel", chat_id: chatId}, {
    connected: function() {},
    disconnected: function() {
      App.room.unsubscribe();
      return $('#messages').html('');
    },
    received: function(data) {
      if (data.topic) {
        return $('#chat-topic').html(data.topic);
      } else {
      return $('#messages').append(format(data));
      }
    },
    speak: function(message, chatId) {
      return this.perform('speak', {
        message: message,
        chat_id: chatId
      });
    }
  });
}

$(document).on('keypress', '[data-behavior~=chat_speaker]', function(event) {
  if (event.keyCode === 13) {
    App.room.speak(event.target.value, event.target.getAttribute('data-chat-id'));
    event.target.value = "";
    return event.preventDefault();
  }
})

function initialChat() {
  var chatId = document.getElementById('chat-input').getAttribute('data-chat-id');
  subscribe(chatId);
}

function format(data) {
  return "<div class='card message'><div class='card-block'><div class='row'><div class='col-md-1'></div><div class='col-md-11'><p class='card-text'><span class='text-muted'>"+data.user+" says</span><br>"+data.message+"</p></div></div></div></div>";
}
