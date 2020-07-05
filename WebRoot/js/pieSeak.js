var SeakChart;
var option;

$(document).ready(function(){   
	
    SeakChart = echarts.init(document.getElementById('Seak_main'));
    
    option = {
    	    title : {
    	        text: '该省发病率分年视图分析',
    	      
    	        x:'center'
    	    },
    	    tooltip : {
    	        trigger: 'item',
    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
    	    },
    	   
    	    toolbox: {
    	        show : true,
    	        feature : {
    	            mark : {show: true},
    	            dataView : {show: true, readOnly: false},
    	            magicType : {
    	                show: true,
    	                type: ['pie', 'funnel']
    	            },
    	            restore : {show: true},
    	            saveAsImage : {show: true}
    	        }
    	    },
    	    legend: {
    	        orient: 'vertical',
    	        left: 'left',
    	        data: []
    	    },
    	    series : [
    	        {
    	            name: '发病率（1/10万）',
    	            type: 'pie',
    	            radius : '55%',
    	            center: ['50%', '60%'],
    	            data:[],
    	            itemStyle: {
    	                emphasis: {
    	                    shadowBlur: 10,
    	                    shadowOffsetX: 0,
    	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
    	                }
    	            }
    	        }
    	    ]
    	};

    SeakChart.setOption(option);
});
