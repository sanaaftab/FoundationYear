function initMap() {
  var socs= {lat: 53.467532, lng: -2.233953};
  var map = new google.maps.Map(document.getElementById('google-maps-home'), {
    zoom: 16,
    center: socs
  });
  var marker = new google.maps.Marker({
    position: socs,
    map: map
  });
}
