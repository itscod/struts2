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

<body>
 <div style="width: 350px; position: relative; left:35%; margin-top:10%;">
	<form class="layui-form" action="registerAction.action" method="post">
		<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		  <legend>注册</legend>
		  &nbsp;&nbsp;&nbsp;&nbsp;<br>
		  <label class="cut">>如已注册，<a href="login.jsp" style="color:#009688">请登录</a></label>
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
	      <input class="layui-input" name="user.password" type="password" lay-verify="password" id="password" placeholder="请输入密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">确认密码</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" type="password" name="passw_confirm" lay-verify="passw_confirm" placeholder="请再次输入密码"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">单选框</label>
	    <div class="layui-input-block">
	      <input type="radio" name="user.sex" value="男" title="男">
	      <input type="radio" name="user.sex" value="女" title="女" checked>
	    </div>
	  </div>
				            
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">联系电话</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="user.userPhone" lay-verify="userPhone" placeholder="请输入联系电话"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">家庭住址</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" name="user.userPress" lay-verify="userPress" placeholder="请输入联系地址"/>
	    </div>
	  </div>
	  
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" type="submit" lay-submit="" >立即注册</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	    </div>
	  </div>
	</form>
 </div>
 
 
<!-- 表单校验 -->
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script src="layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
	layui.use('form', function(){
		var form = layui.form;
		form.render(); 
		form.verify({
		  //用户名校验
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
		  
		  //密码校验
		  ,password: [
		    /^[\S]{5,12}$/
		    ,'密码必须5到12位，且不能出现空格'
		  ] 
		  
		  //确认密码校验
		  ,passw_confirm:function(value,item){
			  if(!$('#password').val() == value){
				  return '两次输入密码不一致';
			  }
		  }
		  
		  //电话号码校验
		  ,userPhone: [
			 /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/
			 ,'电话号码格式错误'
		  ]
		  
		//住址校验
		  ,userPress: [
			 /^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+/
			 ,'住址格式错误'
		  ]
		  
		}); 
		
		//监听radio
		form.on('radio(filter)', function(data){
			  console.log(data.elem); //得到radio原始DOM对象
			  console.log(data.value); //被点击的radio的value值
		}); 
	}); 
</script>

</body>
</html>