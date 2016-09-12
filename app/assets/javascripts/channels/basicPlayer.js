function player() {
  new Vimeo.Player('embed');
}

function ready(fn) {
  if (document.readyState != 'loading'){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

function beginPlayer() {
  ready(player)
}
