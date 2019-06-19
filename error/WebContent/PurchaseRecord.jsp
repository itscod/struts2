<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>

	<head>
		<title>购买记录</title>
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
			<!---- start-smoth-scrolling---->
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
			<!---End-smoth-scrolling---->

	</head>

	<body>
		<!----header-banner--->
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
							<a href="ShoppingCart">购物车</a>
						</li>
						<li>
							<a href="OrderAction" class="active">已下单</a>
						</li>
						<li>
							<a href="Personal">个人信息</a>
						</li>
						<!-- script for menu -->
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
				<h3>已下单</h3>
				<div class="about-grids">
				<div class="col-md-4 about-grid2">
				</div>
				
				<form action="Search">
				<div class="input-group col-md-4" style="margin-top:0px positon:relative"> 
				      <input type="text" class="form-control" name="name" placeholder="请输入商品名称" / > 
	                 	<span class="input-group-btn">
				              <button class="btn btn-info btn-search" type="submit">查找</button> 
                         </span> 
                         </div>
                </form>
                
                <div class="col-md-4 about-grid2">
				</div>
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
										共支付
									</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#session.listk">
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
										<td style="line-height:100px;color:red;">
											<s:property value="number"/>
										</td>
										<td style="line-height:100px;color:red;">
											<s:property value="prices"/>元
										</td>
									</tr>
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