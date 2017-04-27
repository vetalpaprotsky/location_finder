$(document).ready(function() {
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    var marker = $('#map').data('marker');
    var markers = handler.addMarkers([marker]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(14);
  });
});
