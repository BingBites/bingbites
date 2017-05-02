mapboxgl.accessToken = 'pk.eyJ1Ijoic3V5b2dybmVya2FyIiwiYSI6IkJjTWFNVjQifQ.umq3dIayAEU8Bk3PsoJftQ';

var map = new mapboxgl.Map({
  container: 'map', // container id
  style: 'mapbox://styles/suyogrnerkar/cj0lbaxqh00312smtgu81rtnv',
  center: [-75.9180, 42.0987], // starting position
  zoom: 5, // starting zoom
  zoomControl: true
});


// Add zoom and rotation controls to the map.
map.addControl(new mapboxgl.NavigationControl());

// Add geolocate control to the map.
if ($('#map').attr('class').split(' ')[0] != 'showMap') {
  map.addControl(new mapboxgl.GeolocateControl());
  map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      position: 'top-left'
  }));

  map.on('click', function (e) {
      $('#eatery_lat').val(JSON.stringify(e.lngLat.lat));
      $('#eatery_long').val(JSON.stringify(e.lngLat.lng));
  });
} else {
  var latlong = JSON.parse($('.latLong').html());
  map.setCenter([latlong.long, latlong.lat]);

  
  map.on('load', function () {

      map.addLayer({
          "id": "points",
          "type": "symbol",
          "source": {
              "type": "geojson",
              "data": {
                  "type": "FeatureCollection",
                  "features": [{
                      "type": "Feature",
                      "geometry": {
                          "type": "Point",
                          "coordinates": [latlong.long, latlong.lat]
                      },
                      "properties": {
                          "name_en": $('.showTitle strong').html(),
                      }
                  }]
              }
          },
          "layout": {
              "icon-image": "marker-15",
              "icon-size": 1.1,
              "text-field": "{name_en}",
              "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
              "text-offset": [0, 0.6],
              "text-anchor": "top", 
              "text-size": 22
          }
      });
  });
}