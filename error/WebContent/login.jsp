<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>F-R-U-I-T</title>
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	<style>
		body{
			background: url(images/login.jpg);
			background-size: 100% auto;
			background-repeat: no-repeat;
			
		.cut{
			font-size: 14px;
			text-align: center;
		}
		
	</style>
</head>
<body>
 <div style="width: 350px; position: relative; left:35%; margin-top:10%;">
	<form class="layui-form" action="loginAction" method="post">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		  <legend>登录</legend>
		  &nbsp;&nbsp;&nbsp;&nbsp;<br>
		  <label class="cut">>如未注册，<a href="register.jsp" style="color:#009688">请注册</a></label>
		</fieldset>
	
  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">用户名</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="user.userName" lay-verify="userName" placeholder="请输入昵称/真实姓名"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" type="password" lay-verify="password" name="user.password" placeholder="请输入密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">记住密码</label>
	    <div class="layui-input-block">
	      <input name="close" type="checkbox" lay-skin="switch" lay-text="ON|OFF">
	      <a href="#" style="margin-left:50px">忘记密码</a>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="demo1" lay-submit="">立即登录</button>
	    </div>
	  </div>
	</form>
 </div>
<script src="layui/layui.js"></script>
<script type="text/javascript">
	layui.use('form', function(){
		var form = layui.form;
		form.render(); 
		form.verify({
		  userName: function(value, item){ //value：表单的值、item：表单的DOM对象
		    if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
		      return '用户名不能有特殊字符';
		    }
		    if(/(^\_)|(\__)|(\_+$)/.test(value)){
		      return '用户名首尾不能出现下划线\'_\'';
		    }
		    if(/^\d+\d+\d$/.test(value)){
		      return '用户名不能全为数字';
		    }
		  }
		  
		  //我们既支持上述函数式的方式，也支持下述数组的形式
		  //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
		  ,password: [
		    /^[\S]{5,12}$/
		    ,'密码必须5到12位，且不能出现空格'
		  ] 
		}); 
	}); 
</script>

</body>
</html>