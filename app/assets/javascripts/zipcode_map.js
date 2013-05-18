var map;
function initMap(latitude, longitude) {
	var myLatLng = new google.maps.LatLng(latitude, longitude);
	var mapOptions = {
		center: myLatLng,
		zoom: 14,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map($("#map-canvas")[0], mapOptions);
	new google.maps.Marker({
    position: myLatLng,
    map: map
  });

};
function addMarker(latitude, longitude, title) {
	var marker = new google.maps.Marker({
        	position: new google.maps.LatLng(latitude, longitude),
         	map: map,
         	title: title

        });
     };

