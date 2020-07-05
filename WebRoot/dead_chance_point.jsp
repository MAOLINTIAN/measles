<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<title>全国各省麻疹死亡率分年统计散点视图（单位：1/10万）</title>
<link rel="shortcut icon" type="image/x-icon" href="images/cugbIcon.ico" />
<!--核心css文件-->
<link rel="stylesheet" href="css/index.css">
<!--bootstrap需要引入的css文件-->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!--需要引入的必要的js文件-->
<script src="js/jquery-1.9.1.min.js "></script>
<script src="js/bootstrap.min.js "></script>
<script src="js/index.js "></script>
<script src="js/jquery.searchableSelect.js"></script>

<!--需要引入的必要的Echarts文件重点-->
<script src="js/echarts.js"></script>
<script src="js/china.js"></script>
<script src="js/mapDead.js"></script>

</head>

<body style="background-color: black" onload="load()">
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-header">
	

		<div>
			<a href="##" class="navbar-brand "
				style="font-size: 22px;text-align: center;">&nbsp;&nbsp;全国各省麻疹死亡率分年统计散点视图（单位：1/10万）&nbsp;</a>
			<span style="margin-left: 250px;"> <select class='prov'
				id='prov' onchange='changeCity()'
				style="width: 300px;height: 30px;margin-top: 8px;">
					<option value=''>--请选择时间区间--</option>
			</select> <select class='city' id='city' style="width: 300px;height: 30px;">
					<option value=''>--请选择具体年份--</option>
			</select>

				<button class="btn btn-info" id="submit">提交</button></span>
		</div>
	</div>

	</nav>

	<section class="panel home" data-section-name="home">
	<div class="container-fluid" style="margin-top:0px;">
		<div class="row" style="text-align:center;">

			<div id="map_main"
				class="map col-lg-12 col-md-12 col-sm-12 col-xs-12"></div>

		</div>
	</div>
	</section>






	<script>
		var province = document.getElementById("prov");
		var city = document.getElementById("city");
		var arr_prov = new Array(new Option("--请选择时间区间--", ''), new Option(
				"50年代", "50"), new Option("60年代", "60"), new Option("70年代",
				"70"), new Option("80年代", "80"), new Option("90年代", "90"),
				new Option("新世纪", "00"));
		var arr_city = new Array();
		arr_city[0] = new Array(new Option("--请选择具体年份--", ''));
		arr_city[1] = new Array(new Option("1950", '1950'), new Option("1951",
				'1951'), new Option("1952", '1952'),
				new Option("1953", '1953'), new Option("1954", '1954'),
				new Option("1955", '1955'), new Option("1956", '1956'),
				new Option("1957", '1957'), new Option("1958", '1958'),
				new Option("1959", '1959'));
		arr_city[2] = new Array(new Option("1960", '1960'), new Option("1961",
				'1961'), new Option("1962", '1962'),
				new Option("1963", '1963'), new Option("1964", '1964'),
				new Option("1965", '1965'), new Option("1966", '1966'),
				new Option("1967", '1967'), new Option("1968", '1968'),
				new Option("1969", '1969'));
		arr_city[3] = new Array(new Option("1970", '1970'), new Option("1971",
				'1971'), new Option("1972", '1972'),
				new Option("1973", '1973'), new Option("1974", '1974'),
				new Option("1975", '1975'), new Option("1976", '1976'),
				new Option("1977", '1977'), new Option("1978", '1978'),
				new Option("1979", '1979'));
		arr_city[4] = new Array(new Option("1980", '1980'), new Option("1981",
				'1981'), new Option("1982", '1982'),
				new Option("1983", '1983'), new Option("1984", '1984'),
				new Option("1985", '1985'), new Option("1986", '1986'),
				new Option("1987", '1987'), new Option("1988", '1988'),
				new Option("1989", '1989'));
		arr_city[5] = new Array(new Option("1990", '1990'), new Option("1991",
				'1991'), new Option("1992", '1992'),
				new Option("1993", '1993'), new Option("1994", '1994'),
				new Option("1995", '1995'), new Option("1996", '1996'),
				new Option("1997", '1997'), new Option("1998", '1998'),
				new Option("1999", '1999'));
		arr_city[6] = new Array(new Option("2000", '2000'), new Option("2001",
				'2001'), new Option("2002", '2002'),
				new Option("2003", '2003'), new Option("2004", '2004'),
				new Option("2005", '2005'), new Option("2006", '2006'),
				new Option("2007", '2007'), new Option("2008", '2008'),
				new Option("2009", '2009'));
		//动态载入所有省份
		function load() {
			for (var i = 0; i < arr_prov.length; i++) {
				province.options[i] = arr_prov[i];
			}
		}
		//选中省份之后，根据索引动态载入相应城市
		function changeCity() {
			//清空上次的选项
			city.options.length = 0;
			//获取省一级的下拉列表选中的索引
			var index = province.selectedIndex;
			for (var i = 0; i < arr_city[index].length; i++) {
				city.options[i] = arr_city[index][i];
			}
		}
	</script>

	<script type="text/javascript">
		//点击提交月度数据js

		$('#submit').on('click', function() {
			var year = $("#city").val();
			$.ajax({
				//接口地址  
				url : "ActionYearDeadchance.action?year =" + year,
				//请求方式  
				type : 'get',
				//返回数据类型  
				dataType : 'json',
				/*  data: JSON.stringify({                    
				     'year': year
				 }), */
				//请求失败时处理方式  
				error : function() {
				},
				//请求成功时处理方式  
				success : function(data) {
					//  console.log("daf");  
					option = myChart.getOption();
					option.series[0].data = data;
					myChart.setOption(option);
				},
				error : function(xhr, type) {
				}
			});

			$.ajax({
				type : 'get',
				url : "ActionYearDeadchanceTop.action?year=" + year,
				/* data : JSON.stringify({
					'kind' : 'top'
				}), */
				contentType : 'application/json; charset=UTF-8',
				dataType : 'json',
				success : function(data) {
					option = myChart.getOption();
					option.series[1].data = data;
					myChart.setOption(option);
				},
				error : function(xhr, type) {
				}
			});
			$.ajax({
				type : 'get',
				url : "ActionYearDeadchanceMin.action?year=" + year,
				/* data : JSON.stringify({
					'kind' : 'top'
				}), */
				contentType : 'application/json; charset=UTF-8',
				dataType : 'json',
				success : function(data) {
					option = myChart.getOption();
					option.series[2].data = data;
					myChart.setOption(option);
				},
				error : function(xhr, type) {
				}
			});
		});
	</script>
</body>
</html>
