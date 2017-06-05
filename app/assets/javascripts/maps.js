$(document).ready(function(){
        function displayLocation(latitude,longitude){
        var request = new XMLHttpRequest();

       var method = 'GET';
       var url = 'http://maps.googleapis.com/maps/api/geocode/json?latlng='+latitude+','+longitude+'&sensor=true';
       var async = true;

       request.open(method, url, async);
       request.onreadystatechange = function(){
       if(request.readyState == 4 && request.status == 200){
         var data = JSON.parse(request.responseText);
         var address = data.results[3].formatted_address;
            $('#location').html(address); 
       }
    };
   request.send();
 };

 var successCallback = function(position){
 var x = position.coords.latitude;
 var y = position.coords.longitude;
 displayLocation(x,y);
  };


 navigator.geolocation.getCurrentPosition(successCallback);
});

mapboxgl.accessToken = 'pk.eyJ1Ijoic3V5b2dybmVya2FyIiwiYSI6IkJjTWFNVjQifQ.umq3dIayAEU8Bk3PsoJftQ';

if ($('#map').length){
  var map = new mapboxgl.Map({
    container: 'map', // container id
    style: 'mapbox://styles/mapbox/streets-v10',
    center: [-75.9180, 42.0987], // starting position
    zoom: 10, // starting zoom
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
}
