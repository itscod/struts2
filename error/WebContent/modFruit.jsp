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

	<form class="layui-form" action="fruit_edit">
  
	  <div class="layui-form-item ">
	    <label class="layui-form-label">水果名</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="${fruits.fruitName }" name="fruitName" readonly/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item">
	    <label class="layui-form-label">水果品种</label>
	    <div class="layui-input-inline">
	    <select name="kind" lay-filter="kind">
	    	<option value="">请选择水果的品种</option>
	    	<option value="进口">进口</option>
	    	<option value="精品">精品</option>
	    </select>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">原产地</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="${fruits.origin }" name="origin"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">单价</label>
	    <div class="layui-input-inline">
	      <input class="layui-input" value="${fruits.price }" name="price"/>
	    </div>
	  </div>
	  
	  <div class="layui-form-item layui-form-text">
	    <label class="layui-form-label">介绍</label>
	    <div class="layui-input-block" width="200px">
	      <textarea class="layui-textarea" value="${fruits.introduce }" name="introduce" width="200px"></textarea>
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
        form.render('select','kind');
        //各种基于事件的操作，下面会有进一步介绍
        //form.render('组件名','lay-filter名')
    });
</script>
</body>
</html>