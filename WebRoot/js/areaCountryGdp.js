var CountryGdpChart;
var option;

$(document)
		.ready(
				function() {
					CountryGdpChart = echarts.init(document
							.getElementById('CountryGdp_main'));

					option = {
						tooltip : {
							trigger : 'axis',
							position : function(pt) {
								return [ pt[0], '10%' ];
							}
						},

					
						legend : {
							top : 'top',
							left : 'left',
							data : [ '发病率(1/0.1万)', '死亡率(1/10万)','国民生产总值（亿元）' ,'医疗卫生机构数（x3个）','疾病预防控制中心数（x100个）'],
							bottom: '100'
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
							data : [ '1950','1951','1952', '1953', '1954',
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
									
									 ].map(function(str) {
								return str.replace(' ', '\n')
							})
						},
						yAxis : [ {
							name : '发病率,死亡率,医疗卫生机构数',
							min : 0,
							max : 40,
							type : 'value',
							boundaryGap : [ 0, '100%' ]
						}, {
							name : '国民生产总值，疾病预防控制中心数',
							min : 680,
							max : 380000,
							
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
									name : '发病率(1/0.1万)',
									type : 'bar',
									smooth : true,
									symbol : 'none',
									sampling : 'average',
									itemStyle : {
										normal : {
											color : 'red'
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
									name : '死亡率(1/10万)',
									type : 'bar',
									smooth : true,
									symbol : 'none',
									yAxisIndex : 0,
									sampling : 'average',
									itemStyle : {
										normal : {
											color : 'blue'
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
								},{
									name : '国民生产总值（亿元）',
									type : 'bar',
									smooth : true,
									symbol : 'none',
									yAxisIndex : 1,
									sampling : 'average',
									itemStyle : {
										normal : {
											color : 'black'
										}
									},
									areaStyle : {
										normal : {
											color : new echarts.graphic.LinearGradient(
													0, 0, 0, 1, [ {
														offset : 0,
														color : '#636363'
													}, {
														offset : 1,
														color : '#5B5B5B'
													} ])
										}
									},
									data : []
								},{
									name : '医疗卫生机构数（x3个）',
									type : 'bar',
									smooth : true,
									symbol : 'none',
									yAxisIndex : 1,
									sampling : 'average',
									itemStyle : {
										normal : {
											color : 'yellow'
										}
									},
									areaStyle : {
										normal : {
											color : new echarts.graphic.LinearGradient(
													0, 0, 0, 1, [ {
														offset : 0,
														color : '#F0E68C'
													}, {
														offset : 1,
														color : '#EEEE00'
													} ])
										}
									},
									data : []
								} ,{
									name : '疾病预防控制中心数（x100个）',
									type : 'bar',
									smooth : true,
									symbol : 'none',
									yAxisIndex : 0,
									sampling : 'average',
									itemStyle : {
										normal : {
											color : '#CAE1FF'
										}
									},
									areaStyle : {
										normal : {
											color : new echarts.graphic.LinearGradient(
													0, 0, 0, 1, [ {
														offset : 0,
														color : '#CAE1FF'
													}, {
														offset : 1,
														color : '#C6E2FF'
													} ])
										}
									},
									data : []
								}]
					};
					CountryGdpChart.setOption(option);
				});
