<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	 <head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	  <title>F-R-U-I-T BG</title>
	  <meta name="renderer" content="webkit">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	  <meta name="apple-mobile-web-app-status-bar-style" content="black"> 
	  <meta name="apple-mobile-web-app-capable" content="yes">
	  <meta name="format-detection" content="telephone=no">
	  
	  <link href="layui/css/layui.css" rel="stylesheet" media="all">
	</head>
	<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
	  <div class="layui-header">
	    <div class="layui-logo"><a href="backstageMS.jsp" class="layui-logo" style="font-size:20px">后台管理</a></div>
	    <!-- 头部区域（可配合layui已有的水平导航） -->
	    <ul class="layui-nav layui-layout-left">
	      <li class="layui-nav-item"><a href="Iteration">返回商城</a></li>
	    </ul>
	    <ul class="layui-nav layui-layout-right">
	      <li class="layui-nav-item">
	        <s:property value="#session.userName" />
	      </li>
	      <li class="layui-nav-item"><a href="logout.action">退出</a></li>
	      <span class="layui-nav-bar" style="left: 76px; top: 55px; width: 0px; opacity: 0;"></span>
	    </ul>
	  </div>
	  
	  <div class="layui-side layui-bg-black">
	    <div class="layui-side-scroll">
	      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
	      <ul class="layui-nav layui-nav-tree" lay-filter="test">
	        <li class="layui-nav-item layui-nav-itemed">
	          <a href="javascript:;">商品管理</a>
	          <dl class="layui-nav-child">
	            <dd><a data-url="fruit.jsp" data-id="1" data-title="商品详情" href="#" class="site-demo-active" data-type="tabAdd">商品详情</a></dd>
	            <dd><a data-url="addFruit.jsp" data-id="2" data-title="添加商品" href="#" class="site-demo-active" data-type="tabAdd">添加商品</a></dd>
	            <dd><a data-url="modFruit.jsp" data-id="3" data-title="修改信息" href="#" class="site-demo-active" data-type="tabAdd">修改信息</a></dd>
	          </dl>
	        </li>
	        <li class="layui-nav-item layui-nav-itemed">
	          <a href="javascript:;">库存管理</a>
	          <dl class="layui-nav-child">
	            <dd><a data-url="stock.jsp" data-id="4" data-title="缺货提醒" href="#" class="site-demo-active" data-type="tabAdd"">缺货提醒</a></dd>
	            <dd><a data-url="modStock.jsp" data-id="5" data-title="修改库存" href="#" class="site-demo-active" data-type="tabAdd">修改库存</a></dd>
	          </dl>
	        </li>
	        <li class="layui-nav-item layui-nav-itemed">
	          <a href="javascript:;">管理员</a>
	          <dl class="layui-nav-child">
	          	<dd><a data-url="admin.jsp" data-id="6" data-title="管理员详情" href="#" class="site-demo-active" data-type="tabAdd">管理员详情</a></dd>
	            <dd><a data-url="addAdmin.jsp" data-id="7" data-title="添加管理员" href="#" class="site-demo-active" data-type="tabAdd">添加管理员</a></dd>
	            <dd><a data-url="modAdmin.jsp" data-id="8" data-title="修改信息" href="#" class="site-demo-active" data-type="tabAdd">修改信息</a></dd>
	          </dl>
	        </li>
	     </ul>
	    </div>
	  </div>
	  
	  <div class="layui-body">
	    	<div class="layui-tab" lay-filter="demo" lay-allowclose="true">
                <ul class="layui-tab-title">
                </ul>
                <ul class="rightmenu" style="display: none;position: absolute;">
                    <li data-type="closethis">关闭当前</li>
                    <li data-type="closeall">关闭所有</li>
                </ul>
                <div class="layui-tab-content">
                </div>
            </div>
	  </div>
	  
	  <div class="layui-footer">
		<p style="text-align:center">版权所有 © 2019 F-R-U-I-T 保留所有权利 |粤ICP备14101118号-1</p>
	  </div>
	</div>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
	//JavaScript代码区域
	layui.use('element', function(){
		var $ = layui.jquery;
        var element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            //在这里给active绑定几项事件，后面可通过active调用这些事件
            tabAdd: function(url,id,name) {
                //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                element.tabAdd('demo', {
                    title: name,
                    content: '<iframe data-frameid="'+id+'" scrolling="auto" frameborder="0" src="'+url+'" style="width:100%;height:99%;"></iframe>',
                    id: id //规定好的id
                })
                 CustomRightClick(id); //给tab绑定右击事件
                 FrameWH();  //计算ifram层的大小
            },
            tabChange: function(id) {
                //切换到指定Tab项
                element.tabChange('demo', id); //根据传入的id传入到指定的tab项
            }, 
            tabDelete: function (id) {
            element.tabDelete("demo", id);//删除
            }
            , tabDeleteAll: function (ids) {//删除所有
                $.each(ids, function (i,item) {
                    element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
                })
            }
        };


        //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
        $('.site-demo-active').on('click', function() {
            var dataid = $(this);

            //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
            if ($(".layui-tab-title li[lay-id]").length <= 0) {
                //如果比零小，则直接打开新的tab项
                active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
            } else {
                //否则判断该tab项是否以及存在

                var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                $.each($(".layui-tab-title li[lay-id]"), function () {
                    //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                    if ($(this).attr("lay-id") == dataid.attr("data-id")) {
                        isData = true;
                    }
                })
                if (isData == false) {
                    //标志为false 新增一个tab项
                    active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
                }
            }
            //最后不管是否新增tab，最后都转到要打开的选项页面上
            active.tabChange(dataid.attr("data-id"));
        });

        function CustomRightClick(id) {
            //取消右键  rightmenu属性开始是隐藏的 ，当右击的时候显示，左击的时候隐藏
            $('.layui-tab-title li').on('contextmenu', function () { return false; })
            $('.layui-tab-title,.layui-tab-title li').click(function () {
                $('.rightmenu').hide();
            });
            //桌面点击右击 
            $('.layui-tab-title li').on('contextmenu', function (e) {
                var popupmenu = $(".rightmenu");
                popupmenu.find("li").attr("data-id",id); //在右键菜单中的标签绑定id属性

                //判断右侧菜单的位置 
                l = ($(document).width() - e.clientX) < popupmenu.width() ? (e.clientX - popupmenu.width()) : e.clientX;
                t = ($(document).height() - e.clientY) < popupmenu.height() ? (e.clientY - popupmenu.height()) : e.clientY;
                popupmenu.css({ left: l, top: t }).show(); //进行绝对定位
                //alert("右键菜单")
                return false;
            });
        }

        $(".rightmenu li").click(function () {

            //右键菜单中的选项被点击之后，判断type的类型，决定关闭所有还是关闭当前。
            if ($(this).attr("data-type") == "closethis") {
                //如果关闭当前，即根据显示右键菜单时所绑定的id，执行tabDelete
                active.tabDelete($(this).attr("data-id"))
            } else if ($(this).attr("data-type") == "closeall") {
                var tabtitle = $(".layui-tab-title li");
                var ids = new Array();
                $.each(tabtitle, function (i) {
                    ids[i] = $(this).attr("lay-id");
                })
                //如果关闭所有 ，即将所有的lay-id放进数组，执行tabDeleteAll
                active.tabDeleteAll(ids);
            }

            $('.rightmenu').hide(); //最后再隐藏右键菜单
        })
        function FrameWH() {
            var h = $(window).height() -41- 10 - 60 -10-44 -10;
            $("iframe").css("height",h+"px");
        }

        $(window).resize(function () {
            FrameWH();
        })
    });
	</script>
	
	
	</body>
</html>