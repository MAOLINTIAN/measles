<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-cn">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
		<title>具体省份分析模块</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="shortcut icon" type="image/x-icon" href="images/cugbIcon.ico" />
		<link rel="stylesheet" href="css/index.css">
		<link rel="stylesheet" href="css/map.css">
	</head>

	<!--
	描述：body部分，分为导航条，缩略图部分，底部，三个主要部分
-->

	<body>
		<!--描述：导航条部分：用于放置重要的页面导航------------------------------------- -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="navbar-header">
					<!--
                    	描述：按钮绑定导航栏要显示的东西，屏幕缩小时
                    -->
					
					<div>
						<a href="index.jsp" class="navbar-brand " style="font-size: 30px;margin-left:500px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具体省份分析模块(按省份首字母排序)&nbsp;</a>
						
						
					</div>
				</div>

			</nav>

		<!--
	描述：缩略图部分，我的设计意图是下拉页不要太长，还是使用传统网页的单页跳转风格比较好
-->
		<!--
	描述：第一行的四个元素
-->
		<div class="container " id="map" >
			<div class="row ">
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=安徽省" class="thumbnail">
						<img src="images/anhui.jpg" />
					</a>
					<div >
						<pre align="center"><b>安徽</b></pre>
					</div>
				</div>
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=北京市 " class="thumbnail">
						<img src="images/beijng.jpg" />
					</a>
					<div >
						<pre align="center"><b>北京</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=重庆市" class="thumbnail">
						<img src="images/chongqing.jpg" />
					</a>
					<div >
						<pre align="center"><b>重庆</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=福建省" class="thumbnail">
						<img src="images/fujian.jpg" />
					</a>
					<div >
						<pre align="center"><b>福建</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=甘肃省" class="thumbnail">
						<img src="images/gansu.jpg" />
					</a>
					<div >
						<pre align="center"><b>甘肃</b></pre>
					</div>
				</div>

				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=广东省" class="thumbnail">
						<img src="images/guangdong.jpg" />
					</a>
					<div >
						<pre align="center"><b>广东</b></pre>
					</div>
				</div>
			</div>
		
		<!--
                	描述：第二行的四个元素
                -->
		<div class="row ">
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=广西" class="thumbnail">
						<img src="images/guangxi.jpg" />
					</a>
					<div >
						<pre align="center"><b>广西</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=贵州省" class="thumbnail">
						<img src="images/guizhou.jpg" />
					</a>
					<div >
						<pre align="center"><b>贵州</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=海南省" class="thumbnail">
						<img src="images/hainan.jpg" />
					</a>
					<div >
						<pre align="center"><b>海南</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=河北省" class="thumbnail">
						<img src="images/hebei.jpg" />
					</a>
					<div >
						<pre align="center"><b>河北</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=河南省" class="thumbnail">
						<img src="images/henan.jpg" />
					</a>
					<div >
						<pre align="center"><b>河南</b></pre>
					</div>
				</div>

				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=黑龙江省" class="thumbnail">
						<img src="images/heilongjiang.jpg" />
					</a>
					<div >
						<pre align="center"><b>黑龙江</b></pre>
					</div>
				</div>
			</div>
		
		
		<div class="row ">
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=湖北省" class="thumbnail">
						<img src="images/hubei.jpg" />
					</a>
					<div >
						<pre align="center"><b>湖北</b></pre>
					</div>
				</div>
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=湖南省" class="thumbnail">
						<img src="images/hunan.jpg" />
					</a>
					<div >
						<pre align="center"><b>湖南</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=吉林省" class="thumbnail">
						<img src="images/jiling.jpg" />
					</a>
					<div >
						<pre align="center"><b>吉林</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=江苏省" class="thumbnail">
						<img src="images/jiangsu.jpg" />
					</a>
					<div >
						<pre align="center"><b>江苏</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=江西省" class="thumbnail">
						<img src="images/jiangxi.jpg" />
					</a>
					<div >
						<pre align="center"><b>江西</b></pre>
					</div>
				</div>

				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=辽宁省" class="thumbnail">
						<img src="images/liaoning.jpg" />
					</a>
					<div >
						<pre align="center"><b>辽宁</b></pre>
					</div>
				</div>
			</div>
		
		
		<div class="row ">
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=内蒙古" class="thumbnail">
						<img src="images/neimenggu.jpg" />
					</a>
					<div >
						<pre align="center"><b>内蒙古</b></pre>
					</div>
				</div>
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=宁夏" class="thumbnail">
						<img src="images/ninxia.jpg" />
					</a>
					<div >
						<pre align="center"><b>宁夏</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=青海省" class="thumbnail">
						<img src="images/qinghai.jpg" />
					</a>
					<div >
						<pre align="center"><b>青海</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=山东省" class="thumbnail">
						<img src="images/shandong.jpg" />
					</a>
					<div >
						<pre align="center"><b>山东</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=山西省" class="thumbnail">
						<img src="images/shanxi.jpg" />
					</a>
					<div >
						<pre align="center"><b>山西</b></pre>
					</div>
				</div>

				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=陕西省" class="thumbnail">
						<img src="images/shananxi.jpg" />
					</a>
					<div >
						<pre align="center"><b>陕西</b></pre>
					</div>
				</div>
			</div>
		
		
		<div class="row ">
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=四川省" class="thumbnail">
						<img src="images/sichuan.jpg" />
					</a>
					<div >
						<pre align="center"><b>四川</b></pre>
					</div>
				</div>
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=天津市" class="thumbnail">
						<img src="images/tianjing.jpg" />
					</a>
					<div >
						<pre align="center"><b>天津</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=西藏" class="thumbnail">
						<img src="images/xizang.jpg" />
					</a>
					<div >
						<pre align="center"><b>西藏</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=新疆" class="thumbnail">
						<img src="images/xinjiang.jpg" />
					</a>
					<div >
						<pre align="center"><b>新疆</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=云南省" class="thumbnail">
						<img src="images/yunnan.jpg" />
					</a>
					<div >
						<pre align="center"><b>云南</b></pre>
					</div>
				</div>
				
				<div class="col-md-2 col-sm-6 col-xs-12  img_box" style="margin-top: 15px ; ">
					<a href="http://localhost:8080/measles/ActionCityanalyse.action?province=浙江省" class="thumbnail">
						<img src="images/zhejiang.jpg" />
					</a>
					<div >
						<pre align="center"><b>浙江</b></pre>
					</div>
				</div>

				
			</div>
		
		</div>
	
		<!--
	描述：需要引入的js文件：jquery，bootstrap，自定义js文件（轮播图控制，垂直居中控制）
-->
		<script src="js/jquery.min.js "></script>
		<script src="js/bootstrap.min.js "></script>
		<script src="js/index.js "></script>

	</body>

</html>