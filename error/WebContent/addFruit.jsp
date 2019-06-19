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

	<form class="layui-form" action="fruit_add.action">
  
	  <div class="layui-form-item ">
	    <label class="layui-form-label">水果名</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="fruits.fruitName" placeholder="请输入水果名"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">水果品种</label>
	    <div class="layui-input-inline">
	    <select name="fruits.kind" lay-filter="kind">
	    	<option value="">请选择水果的品种</option>
	    	<option value="进口">进口</option>
	    	<option value="精品">精品</option>
	    </select>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">原产地</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="fruits.origin" placeholder="请输入原产地"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">单价</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="" name="fruits.price" lay-verify="price" placeholder="此项为必填"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">介绍</label>
	    <div class="layui-input-block" width="200px">
	      <textarea class="layui-textarea" placeholder="请输入内容" name="fruits.introduce" width="200px"></textarea>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-filter="demo1" lay-submit="">立即提交</button>
	      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
	    </div>
	  </div>
	</form>
 
          
<script src="layui/layui.js" charset="utf-8"></script>
<script>
	layui.use('form', function(){
	    var form = layui.form;	
        //渲染select事件
        form.render('select','kind');
        
        
    });
</script>
<script>
	layui.use('form', function(){
	    var form = layui.form;
        
	    form.verify({
	  		  //单价校验
	  		  price:[
	  		    /^[0-9]*[1-9][0-9]*$/
	 		    ,'单价必须为正整数'
	  		  ] 
	  	}; 
        
    });
</script>
</body>
</html>