// var GoogleMap;



// GoogleMap = (function() {
//   var map, markers, zoom;

//   zoom = {
//     initialView: 15,
//     closeView: 18
//   };

//   markers = [];

//   map = void 0;

//   function GoogleMap(home) {
//     var lat, lon, mapOptions, myLatlng;
//     lat = home["lat"];
//     lon = home["lon"];
//     myLatlng = new google.maps.LatLng(lat, lon);
//     mapOptions = {
//       zoom: zoom.initialView,
//       center: myLatlng
//     };
//     map = new google.maps.Map(document.getElementById("map"), mapOptions);
//   }

//   GoogleMap.prototype.addMarker = function(location, title) {
//     var marker;
//     marker = new google.maps.Marker({
//       position: location,
//       title: title,
//       map: map
//     });
//     markers.push(marker);
//     return google.maps.event.addListener(marker, "click", function() {
//       map.setZoom(zoom.closeView);
//       return map.setCenter(marker.getPosition());
//     });
//   };

//   GoogleMap.prototype.addMarkers = function(markerList) {
//     return _.each(markerList, (function(_this) {
//       return function(marker) {
//         var position, title;
//         position = new google.maps.LatLng(marker["lat"], marker["lon"]);
//         title = "" + marker['full_address'];
//         return _this.addMarker(position, title);
//       };
//     })(this));
//   };

//   GoogleMap.prototype.drawMarkers = function(map) {
//     return _.each(markers, function(marker) {
//       return marker.setMap(map);
//     });
//   };

//   GoogleMap.prototype.showMarkers = function() {
//     return this.setAllMap(map);
//   };

//   GoogleMap.prototype.hideMarkers = function() {
//     return this.setAllMap(null);
//   };

//   GoogleMap.prototype.removeListeners = function() {
//     return _.each(markers, function(marker) {
//       return google.maps.event.clearInstanceListeners(marker);
//     });
//   };

//   GoogleMap.prototype.deleteMarkers = function() {
//     this.hideMarkers();
//     this.removeListeners();
//     return markers = [];
//   };

//   return GoogleMap;

// })();

// app.google || (app.google = {
//   classes: {}
// });

// app.google.classes.GoogleMap = GoogleMap;




// $(function() {
//   var GoogleMap, googleMap;
//   GoogleMap = app.google.classes.GoogleMap;
//   googleMap = new GoogleMap($('[data-map]:eq(0)').data('home'));
//   googleMap.placeMarkers($("[data-map]:eq(0)").data("markers-list"));
//   return $(document).on('click', '[data-tab]', function() {
//     googleMap.deleteMarkers();
//     return googleMap.placeMarkers($("[data-map]:eq($(@).index())").data("markers-list"));
//   });
// });