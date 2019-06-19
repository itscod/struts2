<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>

	<head>
		<title>购物车</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<link href="css/mystyle.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Apparatus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<script src="js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1200);
				});
			});
		</script>

	</head>

	<body>
		<!--头部导航-->
		<div class="header head-top">
			<div class="container">
				<div class="header-top">
					<div class="logo">
						<a href="index.html">F-R-U-I-T<span>personal</span></a>
					</div>
				</div>
				<div class="top-menu" style="margin-top: 240px;">
					<span class="menu"><img src="images/menu.png" alt=""/>  </span>
					<ul>
						<li>
							<a href="Iteration">首页</a>
						</li>
						<li>
							<a href="ShoppingCart" class="active">购物车</a>
						</li>
						<li>
							<a href="OrderAction">已下单</a>
						</li>
						<li>
							<a href="Personal">个人信息</a>
						</li>
						<script>
							$("span.menu").click(function() {
								$(".top-menu ul").slideToggle("slow", function() {});
							});
						</script>

						<div class="clearfix"></div>
					</ul>
				</div>

			</div>
		</div>

		<div class="aboutus">
			<div class="container">
				<h3>购物车</h3>
				<div class="about-grids">
					<div class="col-md-12 about-grid2">
						<table class="table">
							<thead>
								<tr>
									<th>
										商品
									</th>
									<th>
										名称
									</th>
									<th>
										单价
									</th>
									<th>
										数量
									</th>
									<th>
										操作
									</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#session.lists">
									<form action="Consumption">
									<input type="radio" name="id" value="<s:property value="saleID"/>" checked style="display: none"/ >
									<tr class="success">
										<td>
											<img width="100px" alt="200x200" src="images/<s:property value="images"/>" />
										</td>
										<td  style="line-height:100px;">
											<s:property value="fruitName"/>
										</td>
										<td style="line-height:100px;color:red;">
											<s:property value="price"/>元
										</td>
										<td>
											<input type="text" class="form-control" value="1" name="amounts" pattern="^[1-9][0-9]{0,1}$" required oninvalid="setCustomValidity('请输入1-99任意数字');" oninput="setCustomValidity('');" style="width:80px;margin-top:30px;"/>
											
										</td>
										<td style="line-height:100px;">
										<button class="btn btn-lg btn-info" type="submit" style=" height: 40px;width: 80px;">下单</button>
											&nbsp&nbsp
											<a href="DeleteCspt?id=<s:property value="saleID"/>">删除</a>
										</td>
									</tr>
									</form>
								</s:iterator>
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
		</div>

		<div class="footer-section">
			<div class="container">
				<div class="footer-top">
					<p>Copyright &copy; 2019.F-R-U-I-T All 保留所有权利 |粤ICP备14101118号-1 </p>
				</div>
				<script type="text/javascript">
					$(document).ready(function() {
						$().UItoTop({
							easingType: 'easeOutQuart'
						});
					});
				</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			</div>
		</div>

	</body>

</html>