<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>F-R-U-I-T BG</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>

	<form class="layui-form" action="stock_edit">
  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">缺货的水果</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="${fruits.fruitName }" readonly/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">库存数量</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="${fruits.stock }" readonly/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">修改的数量</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" lay-verify="stock" name="stock" placeholder="请输入数量"/>
	    </div>
	  </div>
	 
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="demo1" lay-submit="">提交修改</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	    </div>
	  </div>
	</form>
       
<script src="layui/layui.js" charset="utf-8"></script>
<script>
	layui.use('form', function(){
	    var form = layui.form;
	    form.render();
	    form.verify({
  		  //库存校验
  		  stock:[
  		    /^[0-9]*[1-9][0-9]*$/
  		    ,'库存必须为正整数'
  		  ] 
	  	};
	});
</script>
</body>
</html>