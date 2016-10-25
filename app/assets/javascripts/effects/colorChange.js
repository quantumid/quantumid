function changeColor(col) {
  if (col == 'b') {
    document.getElementById('color-change').className = 'ui main tv-container blue';
  } else if (col == 'r') {
    document.getElementById('color-change').className = 'ui main tv-container red';
  } else if (col == 'g') {
    document.getElementById('color-change').className = 'ui main tv-container green';
  } else {
    document.getElementById('color-change').className = 'ui main tv-container normal';
  };
}
