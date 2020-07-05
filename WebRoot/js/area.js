var areaChart;
var option;

$(document)
		.ready(
				function() {
					areaChart = echarts.init(document
							.getElementById('area_main'));

					option = {
						tooltip : {
							trigger : 'axis',
							position : function(pt) {
								return [ pt[0], '10%' ];
							}
						},

						title : {
							left : 'center',
							text : '该省历年发病率死亡率大数据图示',

						},
						legend : {
							top : 'top',
							left : 'left',
							data : [ '发病率', '死亡率' ]
						},
						toolbox : {
							orient : 'vertical',
							x : 'right',
							y : 'center',
							feature : {
								dataZoom : {
									yAxisIndex : 'none'
								},
								magicType : {
									show : true,
									type : [ 'line', 'bar' ]
								},
								restore : {},
								saveAsImage : {}
							}
						},
						xAxis : {
							type : 'category',
							boundaryGap : [ '20%', '20%' ],
							data : [ '1950', '1951', '1952', '1953', '1954',
									'1955', '1956', '1957', '1958', '1959',
									'1960', '1961', '1962', '1963', '1964',
									'1965', '1966', '1967', '1968', '1969',
									'1970', '1971', '1972', '1973', '1974',
									'1975', '1976', '1977', '1978', '1979',
									'1980', '1981', '1982', '1983', '1984',
									'1985', '1986', '1987', '1988', '1989',
									'1990', '1991', '1992', '1993', '1994',
									'1995', '1996', '1997', '1998', '1999',
									'2000', '2001', '2002', '2003', '2004',
									'2005', '2006', '2007', '2008', '2009',
									'2010', '2011', '2012', '2013', '2014',
									
									 ].map(function(str) {
								return str.replace(' ', '\n')
							})
						},
						yAxis : [ {
							name : '发病率(1/10万)',
							min : 0,
							max : 3600,
							type : 'value',
							boundaryGap : [ 0, '100%' ]
						}, {
							name : '死亡率（1/10万）',
							min : 0,
							max : 145,
							type : 'value',
							boundaryGap : [ 0, '100%' ]
						} ],
						dataZoom : [
								{
									type : 'inside',
									start : 0,
									end : 10,

								},
								{
									start : 0,
									end : 10,
									handleIcon : 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
									handleSize : '80%',
									handleStyle : {
										color : '#fff',
										shadowBlur : 3,
										shadowColor : 'rgba(0, 0, 0, 0.6)',
										shadowOffsetX : 2,
										shadowOffsetY : 2
									}
								} ],
						series : [
								{
									name : '发病率',
									type : 'line',
									smooth : true,
									symbol : 'none',
									sampling : 'average',
									itemStyle : {
										normal : {
											color : '#595959'
										}
									},
									areaStyle : {
										normal : {
											color : new echarts.graphic.LinearGradient(
													0, 0, 0, 1, [ {
														offset : 0,
														color : 'red'
													}, {
														offset : 1,
														color : 'blue'
													} ])
										}
									},
									data : []
								},
								{
									name : '死亡率',
									type : 'line',
									smooth : true,
									symbol : 'none',
									yAxisIndex : 1,
									sampling : 'average',
									itemStyle : {
										normal : {
											color : '#556B2F'
										}
									},
									areaStyle : {
										normal : {
											color : new echarts.graphic.LinearGradient(
													0, 0, 0, 1, [ {
														offset : 0,
														color : '#698B22'
													}, {
														offset : 1,
														color : '#8B1C62'
													} ])
										}
									},
									data : []
								} ]
					};
					areaChart.setOption(option);
				});
