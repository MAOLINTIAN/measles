<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>项目实现流程</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="images/cugbIcon.ico" />
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<!--Google Fonts link-->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,600i,700,700i"
	rel="stylesheet">

   <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/one-page-wonder.css" rel="stylesheet">



</head>
  
  <body data-spy="scroll" data-target=".navbar-collapse">


	<div class="culmn">
	
		<!--End of header -->

		<!--home Section -->
		<section id="home" class="home">
			<div class="overlay">
				<div style="text-align: center;">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div >
									<div class="single_home_slider" >
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h2>Project Implementation Process</h2>
											<br>
											<h1>项目实现流程</h1>
											<div class="separator"></div>
											<p>中国地质大学（北京）信息工程学院</p>


										</div>
									</div>
								
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</section>
		<!--End of home section -->


         <!-- Page Content -->
    <div class="container">

        <hr class="featurette-divider">

        <!-- First Featurette -->
        <div class="featurette" id="about">
            <img class="featurette-image img-circle img-responsive pull-right" src="img/1.png">
            <h2 class="featurette-heading">一、数据获取
                <span class="text-muted"></span>
            </h2>
            
            <br><br>
            <p class="lead">
            	数据获取分为：麻疹数据、省会地理坐标、与国家经济发展数据（GDP（国内生产总值）、医疗卫生机构数、疾病预防控制中心数）三个模块。 
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
				全国及各省麻疹发病率、死亡率、发病人数、死亡人数数据从1950 年到2009年数据全部来源于
				<a href="http://share.escience.net.cn/">大学生科技资源共享服务创新大赛</a>
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
				各省省会的地理位置（经纬度）数据利用python爬虫全部来自于调用
            	<a href="http://map.baidu.com/">百度地图</a>API
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
            	本项目全国GDP、医疗卫生机构数和疾病预防控制中心数据从1952年到2014年数据全部来源于
            	<a href="http://data.stats.gov.cn/easyquery.htm?cn=E0104">中国人民国家统计局国家数据网</a>
            </p>
        </div>

        <hr class="featurette-divider">

        <!-- Second Featurette -->
        <div class="featurette" id="services">
            <img class="featurette-image img-circle img-responsive pull-left" src="img/2.png">
            <h2 class="featurette-heading">二、数据处理
                <span class="text-muted"></span>
            </h2>
            <br><br>
            <p class="lead">
            	数据处理分为：分年处理、分城市处理、与预测分析三个模块。 
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	分年处理：将全国各省的发病率、死亡率和年份（1950-2014年）从数据库取出，然后传参数到前端，
            	在前端以地图上的散点图、热力图形式显示。此过程中用户可以利用表单在前端查询任意一年来观看地图上全国各省（这里的省以省会展示）的数据，
            	侧面有一个数据视图可以查看取出每一条数据，其中对于对于发病率的数值过大，所以在后台进行调整，这样可在地图上显示比例合适。
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	分城市处理：将全国各省的发病率、死亡率（由于这里发病率、死亡率是与发病人数和死亡人数相关，所以只讨论这两个数据即可）、年份
            	从后台取出，后台返回的数据在前端以饼状图的形式对于发病率、死亡率分别进行显示，以折线图进行综合显示。
            	由于各个参数数据最大值不同，所以需要在js文件或者后台将其处理在一个范围内就是折线图y1、y2的范围，这样折线图的显示更合理。
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	预测分析模块处理：此处使用的是GDP（国内生产总值）、医疗卫生机构数、疾病预防控制中心数、全国麻疹发病率、死亡率按年份进行展示，
            	后台返回的数据以柱状图、折线图的形式进行展示，横坐标年份可以进行拖拽，选择某一些年份来进行查看，可以观察到麻疹发病率和死亡率与国家经济
            	之间的关系。
            </p>
        </div>

        <hr class="featurette-divider">

        <!-- Third Featurette -->
        <div class="featurette" id="contact">
            <img class="featurette-image img-circle img-responsive pull-right" src="img/3.png">
            <h2 class="featurette-heading">三、结论
                <span class="text-muted"></span>
            </h2>
            <br><br>
            <p class="lead">
            	结论分为：按年份、按城市、预测分析三个模块。
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	根据年份视图：
            	（1）在地图上通过选择不同年份，可以观察到在50年代的时候每一年麻疹发病率最大的区域基本集中在北京、天津、上海这三个城市，
            	偶尔一两年会出现浙江省、宁夏省等；而到了60年代刚开始的时候，发病率最高还集中在北京、天津，但是从1964年以后，出现了宁夏省、甘肃省、
            	西藏、云南这些省份，北京、天津已经不在是发病率最高的地方了；从70年代开始，全国各省发病率数据最高的省已经没有60年代的高，呈现下降
            	的趋势；80年代往后可以明显看出发病率降低。
            	（2）死亡率在50年代出现在呼和浩特、北京、上海居多，尤其在1959年，突然在宁夏省、湖南省死亡率
            	达到50年代最高；60年代出现比较多的是四川省、甘肃省，相较于50年代已经开始减少，向中国的南部转移；70年代以后开始死亡率变得更少，集中在
            	新疆、西藏，偶尔年中出现四川省、甘肃省。
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	根据省份视图：
            	各省的发病率、死亡率变化总体趋势显示，随着年代、年份的推进，全国各省发病率、死亡率都在逐步降低，并且发病率与死亡率的差距变得越来越小，
            	可以猜想是随着中国经济、医疗水平等的发展，麻疹预防知识越来越普及，人民群众对于麻疹的预防意识越来越强，发病率因而变得越来越低。而医疗
            	站点的逐渐密集、医疗水平等的逐渐发达，使得发病人群能够得到及时的救治，而不至于无力医治而造成死亡。
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	预测分析图示：
            	（1）利用全国GDP（国内生产总值）、医疗卫生机构数、疾病预防控制中心数与死亡率、发病率视图可以观察到全国发病率在
            	1980年之前还是比较高的，尤其在1959年、1965年、1972年，发病率出现了三次峰值，可以看出发病率并不是直线减少，呈现一种有波峰波谷的
            	图像，并且波峰在逐年降低，1980年之后已经变得很小，同时可以观察到疾病预防控制中心数在发病率的波峰期间也出现了增长的趋势，尤其在1962年到1967年，疾病预防
            	控制中心数有了一个大幅度增长，之后又稍微降低，在1972年又开始小幅度增长，最后保持在3600个左右，侧面也说明了疾病预防控制中心数的
            	增加对于麻疹发病率得到了一定的控制。
            	（2）而全国死亡率也是在1980年之前的1959年、1964年、1972年有三次波峰，在1980年之后逐渐已经到5/100万的概率，尤其在1959年达到历史最高
            	397.7/100万，是其他波峰值得两倍左右，而此时国家对于医疗卫生机构的个数开始增加，从1960年到1980年基本保持在27万左右，从1980年之后
            	81万左右，此时麻疹的死亡率已经很低了，可以看出医疗卫生机构个数对于死亡率的控制相对有成效。
            	全国死亡率和发病率总体来说呈现下降的趋势，在1959年之前死亡人数远远大于发病人数，而在1960年-1968年期间，发病率和死亡率基本保持一致，
                                而在1968年之后死亡率就远远小于发病率了，说明了国家对于麻疹病情的控制取得了效果，从国内生产总值的逐年稳步增长也看到了麻疹发病率、死
                                亡率的降低到极小。
            </p>
            <p>&nbsp;&nbsp; &nbsp;&nbsp;
            	总之，利用麻疹数据的处理，以年份、省份、全国多个角度，通过大量数据的直观显示，由过去到现在进行了立体化呈现，对于全国各省麻疹发病率、
            	死亡率的关联，分布规律，由点到面挖掘其中的规律，以及麻疹病情的死亡率、发病率与国家医疗设备、经济发展之间的关系，为麻疹预防控制通过
            	数据提供理论依据。
            </p>
        </div>

        <hr class="featurette-divider">

        <!-- Footer -->
       

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

		<section id="footer" class="trial text-center wow fadeIn"
			data-wow-duration="2s" data-wow-dealy="1.5s"
			style="background-color: #5E5E5E">

			<div class="container" style="margin-top: 10px;">
				<div class="row" style="margin-left: 300px;">
					

					<div class="col-lg-8 col-sm-8 col-xs-12" style="margin-top: 25px;">
						<p style="font-size:10px">
						  <font style="color: white;">地址&nbsp;&nbsp;:&nbsp;北京市海淀区学院路29号&nbsp;&nbsp;&nbsp;
							邮编&nbsp;&nbsp;:&nbsp;100083<br></font>
							<a href="http://www.chinacdc.cn" style="color: lightblue; ">&nbsp;&nbsp;&nbsp;中国疾病预防控制中心&nbsp;&nbsp;&nbsp;
							</a> | <a href="http://www.who.int/mediacentre/factsheets/fs286/zh/ "
								style="color:lightblue; ">世界卫生组织麻疹中心</a><br>
								<a href="http://www.cugb.edu.cn/index.action" style="color:lightblue; ">&copy;中国地质大学（北京）2017</a>
						</p>
						
					</div>

					

				</div>

			</div>
			</footer>

			<!-- End off footer Section-->
		</section>
		<!-- End of Trial section -->


	</div>

	<!-- START SCROLL TO TOP  -->

	<div class="scrollup ">
		<a href="# "><i class="fa fa-chevron-up "></i></a>
	</div>

	<script src="js/vendor/jquery-1.11.2.min.js "></script>
	<script src="js/vendor/bootstrap.min.js "></script>

	<script src="js/jquery.magnific-popup.js "></script>
	<script src="js/jquery.mixitup.min.js "></script>
	<script src="js/jquery.easing.1.3.js "></script>
	<script src="js/jquery.masonry.min.js "></script>

	<!--slick slide js -->
	<script src="css/slick/slick.js "></script>
	<script src="css/slick/slick.min.js "></script>

	<script src="js/plugins.js "></script>
	<script src="js/main.js "></script>
	<!--具体的script必须写在body里才能发挥作用-->

</body>
</html>
