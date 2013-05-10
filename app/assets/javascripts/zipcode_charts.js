function createNoiseComplaintDonut(music_counter, banging_counter, talking_counter, car_music_counter, tv_counter, horn_counter) {
	new Morris.Donut({
		// ID of the element in which to draw the chart.
		element: "noise-complaints-chart",
		data: [
			{label: "Loud Music", value: music_counter},
			{label: "Banging/Pounding", value: banging_counter},
			{label: "Loud Talking", value: talking_counter},
			{label: "Car Music", value: car_music_counter},
			{label: "Loud TV", value: tv_counter},
			{label: "Car Horn", value: horn_counter}
		]
	});
}

