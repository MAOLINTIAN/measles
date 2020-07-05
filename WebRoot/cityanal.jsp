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
<title>全年麻疹死亡率</title>
<link rel="shortcut icon" type="image/x-icon" href="images/cugbIcon.ico" />
<!--核心css文件-->
<link rel="stylesheet" href="css/index.css">
<!--bootstrap需要引入的css文件-->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!--需要引入的必要的js文件-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js "></script>
<script src="js/index.js "></script>
<!--全屏滚动需要的js文件-->
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/scrollify.min.js"></script>
<script src="js/main.js"></script>
<!--需要引入的必要的Echarts文件重点-->
<script src="js/echarts.js"></script>
<script src="js/pieDead.js"></script>
<script src="js/pieSeak.js"></script>
<script src="js/area.js"></script>

</head>



<body style="background-color:white">
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-header">

		<div>
			<a href="##" class="navbar-brand "
				style="font-size: 22px;margin-left:650px;">分省市历年数据详细展示&nbsp;</a>
		</div>
	</div>


	</nav>
	<section class="panel home" data-section-name="home">
	<div class="container-fluid" style="margin-top:70px;">

		<div class="row">

			<div class="col-lg-6">
				<div id="Seak_main"
					style="height: 600px;width: 650px; margin-top:30px;"></div>
			</div>

			<div class="col-lg-6">
				<div id="Dead_main"
					style="height: 600px;width: 650px; margin-top:30px;"></div>
			</div>
		</div>

	</div>
	</section>
	
	
	<section class="panel overview" data-section-name="overview">
	<div class="container-fluid" style="margin-top:50px;">
		<div class="row " style="margin-top:50px;">
			<div class="col-lg-12">
				<div id="area_main"
					style="height: 600px;width: 1500px; margin-top:20px;margin-left:40px;"></div>
			</div>
		</div>

	</div>
	</section>










	<script type="text/javascript">
		$(document).ready(function() {

			var listSeak =<%=session.getAttribute("listSeak")%>;
			var listDead =<%=session.getAttribute("listDead")%>;
			var map =<%=session.getAttribute("map")%>;
			
			//发病率赋值
			option = SeakChart.getOption();
			option.series[0].data = listSeak;
			SeakChart.setOption(option);
            //死亡率赋值
            option1 = DeadChart.getOption();
			option1.series[0].data = listDead;
			DeadChart.setOption(option1);
			//直方图赋值
			option2= areaChart.getOption();
			option2.series[0].data = map['everyyearSeak'];
			option2.series[1].data = map['everyyearDead'];
			areaChart.setOption(option2);
		});
	</script>
	

</body>
</html>
