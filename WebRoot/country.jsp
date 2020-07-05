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
<title>全国麻疹发病率及死亡率综合分析模块</title>
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
<script src="js/areaCountryGdp.js"></script>
</head>

<body style="background-color: white">
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-header">

		<div>
			<a href="##" class="navbar-brand "
				style="font-size: 22px;margin-left:600px;">全国麻疹发病率及死亡率综合分析模块&nbsp;</a>
		</div>
	</div>


	</nav>

	<section class="panel overview" data-section-name="overview">
	<div class="container-fluid" style="margin-top:50px;">
		<div class="row " style="margin-top:50px;">
			<div class="col-lg-12">
				<div id="CountryGdp_main"
					style="height: 600px;width: 1500px; margin-top:20px;margin-left:40px;"></div>
			</div>
		</div>

	</div>
	</section>







	<script type="text/javascript">
		//点击提交月度数据js
		$.ajax({
			//接口地址  
			url : "ActionCountryGdp.action",
			//请求方式  
			type : 'POST',
			//返回数据类型  
			dataType : 'json',
			/*  data: JSON.stringify({                    
			     'year': year
			 }), */

			success : function(data) {
				//  console.log("daf");  
				option = CountryGdpChart.getOption();
				option.series[0].data = data['everyyearSeak'];
				option.series[1].data = data['everyyearDead'];
				option.series[2].data = data['everyyearGdp'];
				option.series[3].data = data['everyyearMhi'];
				option.series[4].data = data['everyyearDcp'];
				CountryGdpChart.setOption(option);
			},
			error : function(xhr, type) {
			}
		});
	</script>
</body>
</html>
