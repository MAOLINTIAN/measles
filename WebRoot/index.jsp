<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-i
e9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>measles</title>
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

<link rel="stylesheet" href="css/iconfont.css">
<link rel="stylesheet" href="css/slick/slick.css">
<link rel="stylesheet" href="css/slick/slick-theme.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery.fancybox.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/study.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style_common.css">
<link rel="stylesheet" href="css/style6.css">

<!--        <link rel="stylesheet" href="css/bootstrap-theme.min.css">-->

<!--For Plugins external css-->
<link rel="stylesheet" href="css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="css/responsive.css" />

<script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar-collapse">

	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg">
				<div class="container">
					<div class="row">
						<div class="nave_menu">
							<nav class="navbar navbar-default">
								<div class="container-fluid">
									<!-- Brand and toggle get grouped for better mobile display -->
									<div class="navbar-header">
										<button type="button" class="navbar-toggle collapsed"
											data-toggle="collapse"
											data-target="#bs-example-navbar-collapse-1"
											aria-expanded="false">
											<span class="sr-only">Toggle navigation</span> <span
												class="icon-bar"></span> <span class="icon-bar"></span> <span
												class="icon-bar"></span>
										</button>
										<a class="navbar-brand" href="#home"> <br> <b><font
												color="#E74C4C" size="7">measles</font></b>
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->

									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a href="#home">系统主页</a></li>
											<li><a href="#feature">麻疹简介</a></li>
											<li><a href="#introduction">总体介绍</a></li>
											<li><a href="#portfolio">项目集锦</a></li>
											<li><a href="#deal">数据处理</a></li>
											<li><a href="#team">开发团队</a></li>
											<li><a href="#footer">联系我们</a></li>
										</ul>

									</div>

								</div>
							</nav>
						</div>
					</div>

				</div>

			</div>
		</header>
		<!--End of header -->

		<!--home Section -->
		<section id="home" class="home">
			<div class="overlay">
				<div class="home_skew_border">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h2>Data Analysis And Prediction Of Measles Diseases</h2>
											<br>
											<h1>麻疹疾病的数据分析和预测</h1>
											<div class="separator"></div>
											<p>中国地质大学（北京）信息工程学院</p>


										</div>
									</div>
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h2>Measles Disease And Data Distribution Characteristics</h2>
											<br>
											<h1>了解麻疹病情、数据分布特点</h1>
											<div class="separator"></div>
											<p>中国地质大学（北京）信息工程学院</p>


										</div>
									</div>
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<h2>Prevention and Prediction, We Are All Protectors</h2>
											<br>
											<h1>预测和预防，我们都是保护者</h1>
											<div class="separator"></div>
											<p>中国地质大学（北京）信息工程学院</p>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="scrooldown">
						<a href="#feature"><i class="fa fa-arrow-down"></i></a>
					</div>
				</div>
			</div>
		</section>
		<!--End of home section -->

		<!--feature section -->
		<section id="feature" class="feature sections">
			<div class="container">
				<div class="row">
					<div class="main_feature text-center">

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-clone"></i>
								</div>

								<h4>定义</h4>
								<div class="separator3"></div>
								<p>麻疹，麻疹病毒属副黏液病毒，是麻疹病毒引起的急性呼吸道传染病，主要通过空气以呼吸道分泌物飞沫形式传播，俗称“痧子”。</p>
							</div>
						</div>

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-heart-o"></i>
								</div>

								<h4>病因</h4>
								<div class="separator3"></div>
								<p>麻疹病毒属副黏液病毒科，为单股负链RNA病毒。直径约100～250nm，衣壳外有囊膜，囊膜有血凝素（HL），有溶血作用。</p>
							</div>
						</div>

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-lightbulb-o"></i>
								</div>
								<h4>发展时期</h4>
								<div class="separator3"></div>
								<p>潜伏期约为10日（6～18天），伴有轻度体温上升。前驱期也称发疹前期，一般为3～4天，表现类似上呼吸道感染症状。</p>
							</div>
						</div>

						<div class="col-sm-3"> 
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-comments-o"></i>
								</div>

								<h4>类型</h4>
								<div class="separator3"></div>
								<p>轻症麻疹：毒力减低型麻疹病毒感染；重症麻疹：中毒症状重；无疹型麻疹：整个病程中无皮疹出现；异型麻疹：非典型麻疹。</p>
							</div>
						</div>

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-comments-o"></i>
								</div>

								<h4>并发症</h4>
								<div class="separator3"></div>
								<p>喉、气管、支气管炎；肺炎；心肌炎；神经系统的并发症等。</p>
							</div>
						</div>

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-lightbulb-o"></i>
								</div>

								<h4>新特点</h4>
								<div class="separator3"></div>
								<p>发病年龄后移、发病季节后移、轻型或非典型患者增多、出疹顺序先从四肢出现，逐渐向胸背呈向心性发展。</p>
							</div>
						</div>

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-heart-o"></i>
								</div>

								<h4>治疗手段</h4>
								<div class="separator3"></div>
								<p>一般治疗：隔离、休息、房内保持适当的温度湿度、常通风；对症治疗：高热时小量退热剂、烦躁时苯巴比妥等镇静剂、剧咳用镇咳祛疾剂等。</p>
							</div>
						</div>

						<div class="col-sm-3">
							<div class="single_feature">
								<div class="single_feature_icon">
									<i class="fa fa-clone"></i>
								</div>

								<h4>预防手段</h4>
								<div class="separator3"></div>
								<p>被动免疫：接触5天内给予免疫血清球蛋白，预防发病；主动免疫：麻疹减毒活疫苗；控制传染源：做到早期发现、早期隔离、切断传染途径。</p>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!--End of container -->
		</section>
		<!--End of feature Section -->
		<hr />

		<!-- History section -->
		<section id="introduction" class="introduction sections">
			<div class="container">
				<div class="row">
					<div class="main_history">
						<div class="col-sm-6" >
							<div class="single_history_img"  >
								<img src="img/introduction1.jpg" alt=""  style="height: 485px"/>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="single_history_content">
								<div class="head_title">
									<h2>项目总体介绍</h2>
								</div>
								<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
									此网站旨在利用公共卫生科学数据中心提供的1950-2014年麻疹监测数据做一个可视化分析工具。
								<br />
								&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
									首先在数据分析方面，利用数据表中的死亡率和发病率分别按年份、按省份进行分析。其中按年份分析使用中国地图，
									以散点图、热力图形式分别进行展示，让浏览者通过交互性选择年份看到各省市疾病概况；按省份分析通过使用饼图、
									柱状图进行展示，可以让用户更好的体验发病率、死亡率的所占比重。
								<br />
								&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
									其次在数据预测方面，利用全国GDP、医疗卫生机构数和疾病预防控制中心数进行预测，以柱状图、折线图的形式展现
									出全国麻疹发病率和死亡率与这三者的关系。
								<br />
								&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
									最后可以利用麻疹数据的处理，与年份、省份、全国多个角度，通过大量数据的直观显示，由过去到现在进行了立体化
									呈现，对于全国各省麻疹发病率、死亡率的关联，由点到面挖掘其中的规律，以及麻疹病情的死亡率、发病率
									与国家医疗设备、经济发展之间的关系，为麻疹预防控制通过数据提供理论依据。
								</p>
								<a href="project.jsp" class="btn btn-lg" target="_blank">了解更多</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of row -->
			</div>
			<!--End of container -->
		</section>
		<!--End of history -->
		<hr />

		<!--第六行，检测依据介绍详细，遮盖效果1-->
		<section id="portfolio" class="portfolio sections">
			<div class="container-fluid">
				<div class="row">
					<div class="main_portfolio">
						<div class="col-sm-12">
							<div class="head_title text-center">
								<h2>项目集锦</h2>
								<div class="subtitle">本项目包括的功能模块</div>
								<div class="separator"></div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="row">

				<!-- SIXTH EXAMPLE -->

				<div class="view view-sixth  col-lg-4 "
					style="width: 500px;height: 300px;">
					<img src="img/sandian.png"
						style="margin-left: 30px;margin-top: 8px;" />
					<div class="mask" style="margin-left: 70px;margin-top: 22px;">
						<a href="seak_chance_point.jsp" target="_blank"><h2>发病率散点图示</h2></a>
						<p>&nbsp;&nbsp; 发病率表示在一定期间内，人群中某病新发生的病例出现的频率。
							按年份地图散点，用点的大小、颜色深浅等显示数据的大小和分布情况。
						</p>
						<a
							href="https://baike.baidu.com/item/%E5%8F%91%E7%97%85%E7%8E%87/4198461?fr=aladdin"
							class="info" target="_blank">Read More</a>
					</div>
				</div>
				<div class="view view-sixth  col-lg-4 col-lg-4 col-md-6 col-sm-12"
					style="width: 500px;height: 300px;">
					<img src="img/sandian2.jpg"
						style="margin-left: 30px;margin-top: 8px;" />
					<div class="mask" style="margin-left: 70px;margin-top: 22px;">
						<a href="dead_chance_point.jsp" target="_blank"><h2>死亡率散点图示</h2></a>
						<p>&nbsp;&nbsp; 死亡率是指用来衡量一部分种群中，一定规模的种群大小、每单位时间的死亡数目（整体或归因于指定因素），
							是在种群层面上研究的问题。
							</p>
						<a
							href="https://baike.baidu.com/item/%E6%95%A3%E7%82%B9%E5%9B%BE/10065276?fr=aladdin"
							class="info" target="_blank">Read More</a>
					</div>
				</div>

				<div class="view view-sixth  col-lg-4 col-lg-4 col-md-6 col-sm-12"
					style="width: 500px;height: 300px;">
					<img src="img/qinghai.jpg"
						style="margin-left: 30px;margin-top: 8px;" />
					<div class="mask" style="margin-left: 70px;margin-top: 22px;">
						<a href="map.jsp" target="_blank"><h2>具体省份分析模块</h2></a>
						<p>&nbsp;&nbsp; 通过进入各个省份模块，让用户利用饼图和柱状图了解某一具体省份的发病率和死亡率，从而确切知道省份情况。</p>
						<a
							href="https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E5%9C%B0%E5%9B%BE/2693620?fr=aladdin"
							class="info" target="_blank">Read More</a>
					</div>
				</div>

			</div>
			<!--第七行，遮盖效果2-->
			<div class="row">
				<!--f SIXTH EXAMPLE -->
				<div class="view view-sixth  col-lg-4"
					style="width: 500px;height: 300px;">
					<img src="img/reli.jpg" style="margin-left: 30px;margin-top: 8px;" />
					<div class="mask" style="margin-left: 70px;margin-top: 22px;">
						<a href="seak_chance_range.jsp" target="_blank"><h2>发病率热力图示</h2></a>
						<p>&nbsp;&nbsp; 发病率热力图表示在一定期间内，麻疹病例在各省的基础上出现病情的频率，热力图展示
							省市的发病率大小，颜色深浅告诉读者哪个省严重。</p>
						<a
							href="https://baike.baidu.com/item/%E7%83%AD%E5%8A%9B%E5%9B%BE/2663612?fr=aladdin"
							class="info" target="_blank">Read More</a>
					</div>
				</div>
				<div class="view view-sixth  col-lg-4"
					style="width: 500px;height: 300px;">
					<img src="img/reli2.jpg" style="margin-left: 30px;margin-top: 8px;" />
					<div class="mask" style="margin-left: 70px;margin-top: 22px;">
						<a href="dead_chance_range.jsp" target="_blank"><h2>死亡率热力图示</h2></a>
						<p>&nbsp;&nbsp; 死亡率热力图是指在所有的发病人数中，麻疹的死亡人数占各省总人数的比重
							用热力图以特殊高亮的形式显示全国各省市的死亡率情况。</p>
						<a
							href="https://baike.baidu.com/item/%E6%AD%BB%E4%BA%A1%E7%8E%87/1679915?fr=aladdin"
							class="info" target="_blank">Read More</a>
					</div>
				</div>
				<div class="view view-sixth  col-lg-4"
					style="width: 500px;height: 300px;">
					<img src="img/yuce1.jpg" style="margin-left: 30px;margin-top: 8px;" />
					<div class="mask" style="margin-left: 70px;margin-top: 22px;">
						<a href="country.jsp" target="_blank"><h2>预测分析模块</h2></a>
						<p>&nbsp;&nbsp; 预测分析模块中，我们利用全国麻疹发病率、死亡率的数据，结合全国GDP、
							医疗卫生机构数和疾病预防控制中心数据，得到其之间的关系。</p>
						<a
							href="http://www.stats.gov.cn/"
							class="info" target="_blank">Read More</a>
					</div>
				</div>
			</div>

			<!-- End off container -->
		</section>


		<!-- End off container -->


		<!-- Study Section -->
		<section id="deal" class="study text-center wow fadeIn"
			data-wow-duration="2s" data-wow-dealy="1.5s">
			<div class="container">
				<div class="row">
					<div class="main_study_area sections">
						<div class="head_title text-center" style="padding-top: -10px;">
							<h2>数据处理流程</h2>
							<div class="subtitle">本项目的数据来源与主要处理流程介绍</div>
							<div class="separator"></div>
						</div>

						<div class="single_study_content">
							<div class="col-sm-6">
								<div class="single_study_slid_area">

									<div class="single_study_text">
										<div class="study_slider">
											<div class="item">
												<div class="s_study_icon">
													<i class="fa fa-lightbulb-o"></i>
												</div>
												<h4>数据获取</h4>
												<div class="separator3"></div>
												<p style="text-align:left ;">
													&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
													本项目全国GDP、医疗卫生机构数和疾病预防控制中心数据来源于中国人民国家统计局国家数据网；
												全国及各省麻疹发病率、死亡率、发病人数、死亡人数数据来源于大学生科技资源共享服务创新大赛；
												各省省会的地理位置（经纬度）数据来自于百度地图API。</p>

												<a href="project.jsp" class="btn btn-lg" target="_blank">了解更多</a>
											</div>
											<div class="item">
												<div class="s_study_icon">
													<i class="fa fa-lightbulb-o"></i>
												</div>
												<h4>数据处理</h4>
												<div class="separator3"></div>
												<p  style="text-align:left ;">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
													本项目以分年处理、分城市处理、与预测分析三个模块。其中
													将全国各省的发病率、死亡率、年份、GDP（国内生产总值）、医疗卫生机构数、疾病预防控制中心数。
													利用Struts2+Hibernate3框架，从数据库取出，梳理后传参数到前端，在前端以散点图、
													热力图、柱状图、折线图形式显示。
												</p>

												<a href="project.jsp" class="btn btn-lg" target="_blank">了解更多</a>
											</div>
											<div class="item">
												<div class="s_study_icon">
													<i class="fa fa-lightbulb-o"></i>
												</div>
												<h4>结论</h4>
												<div class="separator3"></div>
												<p style="text-align:left ;">&nbsp;&nbsp; 
													&nbsp;&nbsp;&nbsp; 利用麻疹数据的处理，以年份、省份、全国多个角度，通过大量数据的直观显示，由过去到现
													在进行了立体化呈现，对于全国各省麻疹发病率、死亡率的关联，分布规律，由点到面挖掘其中的规律，以及麻疹病情的死亡率、
													发病率与国家医疗设备、经济发展之间的关系，为麻疹预防控制通过数据提供理论依据。
												</p>

												<a href="project.jsp" class="btn btn-lg" target="_blank">了解更多</a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="single_study_right_img">
								<div class="col-sm-6">
									<div class="single_study_img">
										<img src="img/data3.jpg" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off Container -->
		</section>
		<!-- End off Study Section -->

		<!-- Pricing Section -->
		<section id="team" class="pricing">
			<div class="container">
				<div class="row">
					<div class="main_pricing_area sections">
						<div class="head_title text-center">
							<h2>项目组成员介绍</h2>
							<div class="subtitle">本项目全体开发人员组成情况与简要介绍</div>
							<div class="separator"></div>
						</div>
						<!-- End off Head_title -->

						<div class="col-md-3 col-sm-6">
							<div class="single_pricing pricing_business">

								<div class="pricing_head " >
									<h3 style=""><br>数据采集组</h3>

									<div class="pricing_price">
										<br>
										<div class="p_r " style="margin-top:15px">杜丹</div>

									</div>  

								</div>

								<div class="pricing_body">
									<ul>
										<li>中国地质大学（北京）</li>
										<li>信息工程学院</li>
										<li>研二在读学生</li>
										<li>联系方式：402770312@qq.com</li>
									<li>      </li>
									</ul>

								</div>
							</div>
						</div>
						<!-- End off col-md-4 -->

						<div class="col-md-3 col-sm-6">
							<div class="single_pricing">
								<div class="pricing_head">
									<h3><br>前端页面组</h3>
									<div class="pricing_price">
										<br>
										<div class="p_r text-center"style="margin-top:15px">李毛毛</div>

									</div>
								</div>

								<div class="pricing_body">
									<ul>
										<ul>
											<li>中国地质大学（北京）</li>
											<li>信息工程学院</li>
											<li>研二在读学生</li>
											<li>联系方式：1453872893@qq.com</li>
											<li>    </li>
										</ul>
									</ul>
									
								</div>
							</div>
						</div>
						<!-- End off col-md-4 -->

						<div class="col-md-3 col-sm-6">
							<div class="single_pricing pricing_business">
								<div class="pricing_head ">
									<h3><br>数据处理组</h3>
									<div class="pricing_price">
										<br>
										<div class="p_r text-center"style="margin-top:15px">秦东艺</div>

									</div>
								</div>

								<div class="pricing_body">
									<ul>
										<ul>
											<li>中国地质大学（北京）</li>
											<li>信息工程学院</li>
											<li>大三在读学生</li>
											<li>联系方式：843694144@qq.com</li>
												<li>    </li>
										</ul>
									</ul>
								
								</div>
							</div>
						</div>
						<!-- End off col-md-4 -->

						<div class="col-md-3 col-sm-6">
							<div class="single_pricing">
								<div class="pricing_head">
									<h3><br>后台开发组</h3>
									<div class="pricing_price">
										<br>
										<div class="p_r text-center"style="margin-top:15px">田茂林</div>

									</div>
								</div>

								<div class="pricing_body">
									<ul>
										<ul>
											<li>中国地质大学（北京）</li>
											<li>信息工程学院</li>
											<li>研三在读学生</li>
											<li>联系方式：1330465864@qq.com</li>
												<li>    </li>
										</ul>
									</ul>
								
								</div>
							</div>
						</div>
						<!-- End off col-md-4 -->

					</div>
				</div>
				<!-- End off row -->
			</div>
			<!-- End off container -->
		</section>
		<!-- End off Pricing Section -->

		<section id="footer" class="trial text-center wow fadeIn"
			data-wow-duration="2s" data-wow-dealy="1.5s"
			style="background-color: #5E5E5E">

			<div class="container" style="margin-top: 10px;">
				<div class="row">
					<div class="contact col-lg-1 hidden-sm hidden-xs  img_box"
						style="background-color: #5E5E5E;">
						<a href="" class="thumbnail"><img src="img/weixin.jpg" /></a>

					</div>

					<div class="contact col-lg-1 col-sm-1 hidden-xs img_box"
						style="background-color: #5E5E5E;">
						<a href="" class="thumbnail"><img src="img/wechat.jpg" /></a>

					</div>

					<div class="col-lg-8 col-sm-8 col-xs-12" style="margin-top: 25px;">
						<p>
							地址&nbsp;&nbsp;:&nbsp;北京市海淀区学院路29号&nbsp;&nbsp;&nbsp;
							邮编&nbsp;&nbsp;:&nbsp;100083<br>
							<a href="http://www.chinacdc.cn" style="color: lightblue; ">&nbsp;&nbsp;&nbsp;中国疾病预防控制中心&nbsp;&nbsp;&nbsp;
							</a> | <a href="http://www.who.int/mediacentre/factsheets/fs286/zh/ "
								style="color:lightblue; ">世界卫生组织麻疹中心</a>
								<br>
								<a href="http://www.cugb.edu.cn/index.action" style="color:lightblue; ">&copy;中国地质大学（北京）2017</a>
						</p>
						
					</div>

					<div class="contact col-lg-1 col-sm-1 hidden-xs hidden-xs img_box "
						style="background-color: #5E5E5E; ">
						<a href=" " class="thumbnail "><img src="img/qq.png " /></a>

					</div>

					<div class="contact col-lg-1 col-sm-1 hidden-xs img_box "
						style="background-color: #5E5E5E; ">
						<a href=" " class="thumbnail "><img src="img/qq.jpg " /></a>

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