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
		],
		colors: ["#981b1e","#8db600"]
	});
}

function createDrinkingChart(public_counter, underage_counter){
	new Morris.Bar({
		element: "drinking-chart",
		data: [
			{ y: 'In Public', a: public_counter, b: 13 },
			{ y: 'Underage', a: underage_counter,  b: 6 }

			// { y: 'In Public', a: public_counter, b: 13 },
			// { y: 'Underage', a: underage_counter,  b: 6 }
    ],
    hidehover: 'false',
    xkey: 'y',
    ykeys: ['a', 'b'],
    labels: ['This Zipcode', 'Manhattan Avg.']
	});
}

function createSqualorChart(rodent_counter, homeless_counter){
	new Morris.Bar({
		element: 'squalor-chart',
		data: [
			{ y: 'Rodents', a: rodent_counter, b: 333 },
			{ y: 'Homeless Encampments', a: homeless_counter, b: 70}
		],
		xkey: 'y',
    ykeys: ['a', 'b'],
    labels: ['This Zipcode', 'Manhattan Avg.']
	});
}


