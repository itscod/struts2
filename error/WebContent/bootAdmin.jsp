<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F-R-U-I-T</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/zySearch.js"></script>
<script src="js/jquery.movebg.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="js/verificationCode.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap-hover-dropdown/2.2.1/bootstrap-hover-dropdown.js"></script>
<script type="text/javascript">
	$(function() {

		$('#slider').nivoSlider();
		$("#zySearch").zySearch({
			"width" : "400",
			"height" : "33",
			"parentClass" : "pageTitle",
			"callback" : function(keyword) {
				console.info("?");
				console.info(keyword);
			}
		});
		$(".nav").movebg({
			width : 120, /*滑块的大小*/
			extra : 40, /*额外反弹的距离*/
			speed : 300, /*滑块移动的速度*/
			rebound_speed : 400 /*滑块反弹的速度*/
		});

		$('#demo').carousel({
			interval : 3000, //自动播放4s

		});

	});
	function shown() {
		var li = document.getElementById("my");
		li.style.display = 'block' ;

	}
	function hiden() {
		var li = document.getElementById("my");
		li.style.display = 'none' ;
	}

</script>
</head>
<body style="background-color:#f3f2f0">
	<div class="container-fluid" style="background-color:white">

		<hr>
		<br />
		<div class="row clearfix">
			<div class="col-md-5 column" style="text-align:center;font-size:13px">
				可提供各种场合本地水果配送及水果礼盒定制服务！</div>
			<div class="col-md-7 column" style="text-align:center;font-size:13px">
				
				你好！
				${userName}				&nbsp;|&nbsp;
				<a href="logout.action">注销</a>
			</div>
		</div>




		<br />
		<hr>


		<div class="row clearfix">
			<div class="col-md-4 column">
				<div class="logo" style="float:right;margin-right:60px">
					<a href="index.html"><img src="images/logo.png"> </a>
				</div>
			</div>
			<div class="col-md-5 column">
				<div class="zySearch" id="zySearch"></div>
			</div>
			<div class="col-md-1 column">
				<div id="nav" style="margin-left:-70px;margin-top:27px">
					<div class="navsBox" onmouseover="shown()" onmouseout="hiden()">
						<div class="firstNav">
							<img src="images/my.jpg">我的账户<img src="images/jiantou.jpg"
								width="29px" height="31px">
						</div>
						<ul id="my" style="display:none;">
							<a href="http://localhost:8080/error/information.jsp" target="content" style="text-decoration:none;"><li class="information">修改信息></li></a>
							<a href="#" target="content" style="text-decoration:none;"><li class="order">我的订单></li></a>
							<a href="#" target="content" style="text-decoration:none;"><li class="help">帮助中心></li></a>
						</ul>
					</div>
				</div>


			</div>
			<div class="col-md-2 column">
				<div id="nav" style="margin-left:-30px;margin-top:27px">
					<div class="navsBox">
						<div class="firstNav">
							<img src="images/che.jpg">&nbsp;&nbsp;我的购物车
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="wraper">
					<div class="nav">
						<ul>
							<li class="nav-item"><a href="http://localhost:8080/fruit/boot.html">全部商品</a></li>
							<li class="nav-item cur"><a href="http://sc.chinaz.com/"
								target="_blank">首页</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">进口水果</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">国产水果</a></li>
							<li class="nav-item"><a href="backstageMS.jsp"
								target="_blank">后台管理</a></li>
						</ul>
						<!--移动的滑动-->
						<div class="move-bg"></div>
						<!--移动的滑动 end-->
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="height: 2000px;">
	<iframe src="top.jsp" name="content" id="zhuye" width="100%" height="100%" scrolling="no" frameborder="0">
	
			
	</iframe>
	</div>
	<div style="text-align:center;background-color:white">
		<p>友情链接：永隆铺超市</p>
		<p>F-R-U-I-T是一家高品质网上水果超市,可提供深圳水果同城免费配送,网上水果超市可以给您提供更好的水果网购新体验！</p>
		<p>版权所有 © 2019 F-R-U-I-T 保留所有权利 |粤ICP备14101118号-1</p>
		<br/><br>
	</div>
	
</body>
</html>
<style>

.carousel-item img {
	max-width: 100%;
	height: auto;
}

#nav .navsBox {
	width: 120px;
	border: 1px solid lightgray;
}

#nav .navsBox .firstNav {
	height: 36px;
	line-height: 34px;
	width: 120px;
	font-size: 13px;
	cursor: pointer;
}

#nav .navsBox ul li {
	display: block;
	height: 26px;
	line-height: 26px;
	width: 120px;
	font-size: 12px;
	text-indent: 1em;
}

#nav .navsBox ul li:hover {
	color: red;
	background-color: #f3f2f0;
}
#nav .navsBox ul li a:hover {
	color: red;
}
#nav .navsBox ul li a {
	color: #000;
}

</style>