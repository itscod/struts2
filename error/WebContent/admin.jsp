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
 
<table class="layui-hide" id="test" lay-filter="test"></table>
 
<script id="toolbarDemo" type="text/html">
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
    <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
  </div>
</script>
 
<script id="barDemo" type="text/html">
  <a class="layui-btn layui-btn-xs" lay-event="add" href="addAdmin.jsp">添加</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit" href="admin">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" href="admin_delete">删除</a>
</script>
              
          
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 --> 
 
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'admin_findAll.action'
    ,toolbar: '#toolbarDemo'
    ,title: '管理员信息表'
    ,cols: [[
      {type: 'checkbox', fixed: 'left'}
      ,{field:'userID', title:'ID', width:80, fixed: 'left', unresize: true, sort: true}
      ,{field:'userName', title:'用户名', width:120}
      ,{field:'password', title:'密码', width:120}
      ,{field:'sex', title:'性别', width:80, sort: true}
      ,{field:'userPhone', title:'联系电话', width:150}
      ,{field:'userPress', title:'家庭地址'}
      ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:180}
    ]]
    ,page: true
  });
  
  //头工具栏事件
  table.on('toolbar(test)', function(obj){
    var checkStatus = table.checkStatus(obj.config.id);
    switch(obj.event){
      case 'getCheckData':
        var data = checkStatus.data;
        layer.alert(JSON.stringify(data));
      break;
      case 'getCheckLength':
        var data = checkStatus.data;
        layer.msg('选中了：'+ data.length + ' 个');
      break;
      case 'isAll':
        layer.msg(checkStatus.isAll ? '全选': '未全选');
      break;
    };
  });
  
  //监听行工具事件
  table.on('tool(test)', function(obj){
    var data = obj.data;
    //console.log(obj)
    if(obj.event === 'del'){
      layer.confirm('您确定删除吗', function(index){
        obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
      layer.prompt({
        formType: 2
        ,value: data.email
      }, function(value, index){
        obj.update({
          email: value
        });
        layer.close(index);
      });
    }
  });
});
</script>

</body>
</html>