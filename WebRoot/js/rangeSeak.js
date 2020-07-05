var rangeChart;
var option;

$(document).ready(function() {

	rangeChart = echarts.init(document.getElementById('range_main'));

	option = {
		
		backgroundColor : '#404a59',
		visualMap : {
			min : 0,
			max : 110,
			splitNumber : 5,
			inRange : {
				color : ['purple','maroon','red','orange','yellow','lightgreen' ].reverse()
			},
			textStyle : {
				color : '#fff'
			}
		},
		  toolbox: {
	            show : true,
	            orient : 'vertical',
	            x: 'right',
	            y: 'center',
	            feature : {
	                mark : {show: true},
	                dataView : {show: true, readOnly: false},
	                restore : {show: true},
	                saveAsImage : {show: true}
	            }
	        },
		geo : {
			map : 'china',
			label : {
				emphasis : {
					show : true
				}
			},
			roam : true,
			itemStyle : {
				normal : {
					areaColor : '#323c48',
					borderColor : '#111'
				},
				emphasis : {
					areaColor : '#2a333d'
				}
			}
		},
		series : [ {
			name : 'AQI',
			type : 'heatmap',
			coordinateSystem : 'geo',
			data : []
		} ]
	};
	rangeChart.setOption(option);
});
