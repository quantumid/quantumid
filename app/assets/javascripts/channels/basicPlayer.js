function player() {
  new Vimeo.Player('embed', options);
}

function ready(fn) {
  if (document.readyState != 'loading'){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

function beginPlayer(videoId) {
  options = {
    id: videoId,
    width: 640
  }
  ready(player)
}
