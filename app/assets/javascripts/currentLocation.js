document.addEventListener('turbolinks:load', function(){
  var mymap = L.map('mapid').locate({setView: true, maxZoom: 16});

    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
      maxZoom: 18,
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
        '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      id: 'mapbox.streets'
    }).addTo(mymap);

    var theMarker = {};

    mymap.on('click',function(e){
      lat = e.latlng.lat;
      lon = e.latlng.lng;

      console.log("Estas en LAT: "+ lat+" y LONG: "+lon );
      $("#pet_latitude").val(lat);
      $("#pet_longitude").val(lon);

      if (theMarker != undefined) {
        mymap.removeLayer(theMarker);
      };

      theMarker = L.marker([lat,lon]).addTo(mymap);
    });

})
