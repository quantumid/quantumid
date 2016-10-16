function switchChat(newId) {
  App.room.disconnected();
  $('#chat-input').attr('data-chat-id', newId);
  subscribe(newId);
};
