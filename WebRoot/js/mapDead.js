var myChart;
var option;

$(document).ready(function(){   
	
    myChart = echarts.init(document.getElementById('map_main'));
    
    option = {
    backgroundColor: '#404a59',
   
    tooltip : {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        y: 'bottom',
        x:'right',
        data:['Min5','Top5','AllData'],
      
        textStyle: {
            color: '#fff'
        }
    },
  
    dataRange: {
            min : 0,
            max : 110,
            calculable : true,
            color: ['purple','maroon','red','orange','yellow','lightgreen']
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
    geo: {
        map: 'china',
        label: {
            emphasis: {
                show: false
            }
        },
        roam: true,
        itemStyle: {
            normal: {
                areaColor: '#323c48',
                borderColor: '#87cefa'
            },
            emphasis: {
                areaColor: '#1e90ff'
            }
        },
        center: [104.114129, 37.550339],
        zoom: 1

    },
    series : [
        {
            name: 'AllData',
            type: 'scatter',
            coordinateSystem: 'geo',
            data: [],
            symbolSize: function (val) {
                return val[2]/6;
            },
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: false
                },
                emphasis: {
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#ddb926'
                }
            }
        },
        {
            name: 'Top5',
            type: 'effectScatter',
            coordinateSystem: 'geo',
            data: [],
            symbolSize: function (val) {
                return val[2]/6;
            },
            showEffectOn: 'render',
            rippleEffect: {
                brushType: 'stroke'
            },
            hoverAnimation: true,
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#f4e925',
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            zlevel: 1
        },
        {
            name: 'Min5',
            type: 'effectScatter',
            coordinateSystem: 'geo',
            data: [],
            symbolSize: function (val) {
                return val[2]/6 ;
            },
            showEffectOn: 'render',
            rippleEffect: {
                brushType: 'stroke'
            },
            hoverAnimation: true,
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#f4e925',
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            zlevel: 1
        }
            
    ]
};
    myChart.setOption(option);
});
