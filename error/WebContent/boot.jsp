<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta charset="UTF-8">
<title>F-R-U-I-T</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />
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

    function onguochan() {
        window.location.hash = "#guochan";
       }
    function onjinkou() {
       	window.location.hash = "#jinkou";
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
				<s:property value="#session.userName" />
				&nbsp;|&nbsp;
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
							<a href="http://localhost:8080/error/Personal" target="" style="text-decoration:none;"><li class="information">修改信息></li></a>
							<a href="http://localhost:8080/error/OrderAction" target="" style="text-decoration:none;"><li class="order">我的订单></li></a>

						</ul>
					</div>
				</div>


			</div>
			<div class="col-md-2 column">
				<div id="nav" style="margin-left:-30px;margin-top:27px">
					<div class="navsBox">
						<a href="ShoppingCart">
							<div class="firstNav">
								<img src="images/che.jpg">&nbsp;&nbsp;我的购物车
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="container-fluid" data-spy="scroll" data-target="#myScrollspy">
		<div class="row clearfix">
			<div class="col-md-12 column" id="myScrollspy">
				<div class="wraper">
					<div class="nav">
						<ul>
							<li class="nav-item"><a href="http://localhost:8080/error/boot.jsp">全部商品</a></li>
							<li class="nav-item cur"><a href="http://sc.chinaz.com/"
								target="_blank">首页</a></li>
							<li class="nav-item" onclick="onjinkou()"><a
								target="_blank" style="cursor:pointer;">进口水果</a></li>
							<li class="nav-item" onclick="onguochan()"><a
								target="_blank" style="cursor:pointer;">国产水果</a></li>
							<li class="nav-item"><a href="http://sc.chinaz.com/"
								target="_blank">？</a></li>
						</ul>
						<!--移动的滑动-->
						<div class="move-bg"></div>
						<!--移动的滑动 end-->
					</div>
				</div>
			</div>
		
			<div class="col-md-12 column" style="height:520px">
				<div class="col-md-12 column">
					<div class="header_bottom_right">
						<!------ Slider ------------>
						<div class="slider">
							<div class="slider-wrapper theme-default">
								<div id="slider" class="nivoSlider">
									<img src="images/a.jpg" data-thumb="images/1.jpg" alt="" /> <img
										src="images/b.jpg" data-thumb="images/2.jpg" alt="" /> <img
										src="images/c.jpg" data-thumb="images/3.jpg" alt="" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="magin-top:40px;">
		<div class="row clearfix">
			<div class="container" style="background-color:#ffffff">
				<div class="row clearfix" style="background-color:#f3f2f0">
					<div class="col-md-12 column"
						style="font-size:20px;color:brown;font-weight:bold;" id="jinkou">
						<br />【进口水果】 纵享异国口感，回味无穷<br />
						<br />
						<hr style="height:21px;border-top:2px solid green;" />
					</div>
				</div>
				<div class="row clearfix" style="background-color:#f3f2f0">
				<s:iterator value="#session.list1">
					<div class="col-md-3">
						<div class="thumbnail">
							<img alt="200x200" src="images/<s:property value="images"/>" />
							<div class="caption" style="text-align:center">
								<h3 style="text-align:center"><s:property value="fruitsname"/></h3>
								<p>
									<span class="price0">热卖价 :</span> <span class="price1"
										style="color:green;font-size:17px;font-weight:bold;">￥<s:property value="price"/></span>
								</p>
									<button class="btn btn-success" data-toggle="modal" data-target="#<s:property value="fruitID"/>">加入购物车</button>
									<div class="modal fade" id="<s:property value="fruitID"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" 
															aria-hidden="true">×
													</button>
													<h4 class="modal-title" id="myModalLabel">
														<s:property value="fruitsname"/>
													</h4>
												</div>
												<div class="modal-body">
													<img alt="400x400" src="images/<s:property value="images"/>" width="400px"/>
													<p><s:property value="introduce"/></p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" 
															data-dismiss="modal">关闭
													</button>
													<a href="PurchaseAction?id=<s:property value="fruitID"/>">
														<button type="button" class="btn btn-primary">
															加入购物车
														</button>
													</a>
												</div>
											</div><!-- /.modal-content -->
										</div><!-- /.modal-dialog -->
									</div><!-- /.modal -->
							</div>
						</div>
					</div>
				</s:iterator>
				</div>
				<div class="row clearfix" style="background-color:#f3f2f0">
					<div class="col-md-12 column"
						style="font-size:20px;color:brown;font-weight:bold;" id="guochan">
						<br />【国产水果】 应时而采，新鲜特供<br />
						<br />
						<hr style="height:21px;border-top:2px solid green;" />
					</div>
				</div>
				<div class="row clearfix" style="background-color:#f3f2f0">
					<s:iterator value="#session.list2">
						<div class="col-md-3">
							<div class="thumbnail">
								<img alt="200x200" src="images/<s:property value="images"/>" />
								<div class="caption" style="text-align:center">
									<h3 style="text-align:center"><s:property value="fruitsname"/></h3>
									<p>
										<span class="price0">热卖价 :</span> <span class="price1"
											style="color:green;font-size:17px;font-weight:bold;">￥<s:property value="price"/></span>
									</p>
									<a href="#jinkou">
									<button class="btn btn-success" data-toggle="modal" data-target="#<s:property value="fruitID"/>">加入购物车</button>
									</a>
									<div class="modal fade" id="<s:property value="fruitID"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" 
															aria-hidden="true">×
													</button>
													<h4 class="modal-title" id="myModalLabel">
														<s:property value="fruitsname"/>
													</h4>
												</div>
												<div class="modal-body">
													<img alt="400x400" src="images/<s:property value="images"/>" width="400px"/>
													<p><s:property value="introduce"/></p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" 
															data-dismiss="modal">关闭
													</button>
													<a href="PurchaseAction?id=<s:property value="fruitID"/>">
														<button type="button" class="btn btn-primary">
															加入购物车
														</button>
													</a>
												</div>
											</div><!-- /.modal-content -->
										</div><!-- /.modal-dialog -->
									</div><!-- /.modal -->
								</div>
							</div>
						</div>
					</s:iterator>
				</div>
			</div>			
		</div>
	</div>
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-md-12 column" style="height:200px">
				<iframe src="bottom.jsp" name="bottom" id="dibu" width="100%" height="100%" scrolling="no" frameborder="0">		
				</iframe>
			</div>
		</div>
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