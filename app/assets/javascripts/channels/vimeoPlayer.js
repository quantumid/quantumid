function addVideo(id) {
  var endpoint = 'https://www.vimeo.com/api/oembed.json';
  var videoUrl = 'https://www.vimeo.com/' + id;
  var url = endpoint + '?url=' + encodeURIComponent(videoUrl) + '&callback=embedVideo';
  addPlayer(url);
}

function embedVideo(video) {
  document.getElementById('embed').innerHTML = unescape(video.html);
}

function addPlayer(finalUrl) {
  var js = document.createElement('script');
  js.setAttribute('type', 'text/javascript');
  js.setAttribute('src', finalUrl);
  document.getElementsByTagName('head')[0].appendChild(js);
}
