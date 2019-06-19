<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>

	<head>
		<title>个人信息</title>
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

	</head>
		<style type="text/css">
		.logintxt{
		     border-right: #ffffff 0px solid;
		     border-top: #ffffff 0px solid;
		     font-size: 9pt;
		     border-left: #ffffff 0px solid;
		     border-bottom: #c0c0c0 1px solid;
		     background-color: #ffffff
		}
		#scrollDiv {
			height: 30px;
			line-height: 30px;
			margin: 50px auto;
			overflow: hidden;
		}
		#scrollDiv li {
			height: 30px;
			cursor: pointer;
			list-style: none;
		}
	</style>
	<body>
		<div class="header head-top">
			<div class="container">
				<div class="header-top">
					<div class="logo">
						<a href="Iteration">F-R-U-I-T<span>personal</span></a>
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
							<a href="OrderAction">已下单</a>
						</li>
						<li>
							<a href="Personal" class="active">个人信息</a>
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
				<h3><s:property value="#session.userName" />&nbsp;的个人信息</h3>
				<div class="about-grids">
					<div class="col-md-12 about-grid2">
					<div style="margin-left:330px;">
						<s:iterator value="#session.listr">
						
						
           				<form action="Modify">
								<font size="5" color="#444444" style="">姓名：</font><input class="logintxt" readonly name="name" value="<s:property value="#session.userName" />" type="text" pattern="^[a-zA-Z0-9\u4e00-\u9fa5]{2,10}$" required oninvalid="setCustomValidity('请输入正确的用户名');" oninput="setCustomValidity('');" style="width:320px;margin-left:50px;border:0.5px solid #378888"/> <br><br>
								<font size="5" color="#444444" style="">性别： 
									<select name="sex" style="margin-left:100px;width:80px;">
										  <option value ="<s:property value="sex" />"><s:property value="sex" /></option>
										  <option value ="男">男</option>
										  <option value ="女">女</option>
									</select>
									<br> <br>
								<font size="5" color="#444444" style="">电话：</font><input class="logintxt" name="phone" value="<s:property value="phone" />" type="text" pattern="^1[3|5|7|8][0-9]{9}$" required oninvalid="setCustomValidity('请输入正确的电话');" oninput="setCustomValidity('');" style="width:320px;margin-left:50px"/> <br> <br>
								<font size="5" color="#444444" style="">地址：</font><input class="logintxt" name="add" value="<s:property value="press" />" type="text" pattern="^[a-zA-Z0-9\u4e00-\u9fa5]{2,40}$" required oninvalid="setCustomValidity('请输入正确的地址');" oninput="setCustomValidity('');" style="width:320px;margin-left:50px"/> <br><br><br>
								<button class="btn btn-lg btn-info" type="submit" id="submit" style="margin-left: 170px; height: 47px;width: 200px;">修改信息</button>
							</form> 
						</s:iterator>
						</div>
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