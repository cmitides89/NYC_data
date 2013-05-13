function initMap(latitude, longitude) {
	var myLatLng = new google.maps.LatLng(latitude, longitude);
	var mapOptions = {
		center: myLatLng,
		zoom: 16,
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map($("#map-canvas")[0], mapOptions);
	new google.maps.Marker({
    position: myLatLng,
    map: map
  });
}