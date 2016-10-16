function switchChat(newId) {
  App.room.disconnected();
  $('#chat-input').attr('data-chat-id', newId);
  subscribe(newId);
}

function reconnect(id) {
  event.preventDefault();
  switchChat(id);
}
