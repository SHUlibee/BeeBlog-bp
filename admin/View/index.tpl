<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>博客管理系统</title>
    <link href="/Assert/zui/css/zui.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- 导航头部 -->
        <div class="navbar-header">
            <!-- 移动设备上的导航切换按钮 -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-example">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- 品牌名称或logo -->
            <a class="navbar-brand" href="your/nice/url">ZUI</a>
        </div>
        <!-- 导航项目 -->
        <div class="collapse navbar-collapse navbar-collapse-example">
            <!-- 一般导航项目 -->
            <ul class="nav navbar-nav">
                <li class="active"><a href="your/nice/url">项目</a></li>
                <li><a href="your/nice/url">需求</a></li>
                ...
                <!-- 导航中的下拉菜单 -->
                <li class="dropdown">
                    <a href="your/nice/url" class="dropdown-toggle" data-toggle="dropdown">管理 <b class="caret"></b></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="your/nice/url">任务</a></li>
                        ...
                    </ul>
                </li>
            </ul>
        </div><!-- END .navbar-collapse -->
    </div>
</nav>
<div class="col-sm-2">
    <nav class="menu" data-ride="menu" style="">
        <ul id="treeMenu" class="tree tree-menu" data-ride="tree">
            <li class="active"><a href="javascript:;"><i class="icon icon-th"></i>首页</a></li>
            <li><a href="javascript:;"><i class="icon icon-user"></i>个人资料</a></li>
            <li class="open">
                <a href="javascript:;"><i class="icon icon-time"></i>博客管理</a>
                <ul>
                    <li><a href="javascript:;" data-href="http://admin.beeblog.cn/blog">博客列表</a></li>
                    <li><a href="javascript:;" data-href="http://admin.beeblog.cn/blog/add">新增博客</a></li>
                </ul>
            </li>
            <li><a href="javascript:;"><i class="icon icon-trash"></i>垃圾篓</a></li>
            <li><a href="javascript:;"><i class="icon icon-list-ul"></i>全部</a></li>
            <li class="open">
                <a href="javascript:;"><i class="icon icon-tasks"></i>状态</a>
                <ul>
                    <li>
                        <a href="javascript:;"><i class="icon icon-circle-blank"></i>已就绪</a>
                        <ul>
                            <li><a href="javascript:;">已取消</a></li>
                            <li><a href="javascript:;">已关闭</a></li>
                        </ul>
                    </li>
                    <li><a href="javascript:;"><i class="icon icon-play-sign"></i>进行中</a></li>
                    <li><a href="javascript:;"><i class="icon icon-ok-sign"></i>已完成</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
<div class="col-sm-10">
    <div class="main" data-src="http://admin.beeblog.cn/blog"></div>
</div>

<script src="/Assert/jquery.1.12.4.min.js"></script>
<script src="/Assert/zui/js/zui.min.js"></script>
<script>
$(document).ready(function () {
// 手动通过点击模拟高亮菜单项
    $('#treeMenu').on('click', 'a', function() {
        $('#treeMenu li.active').removeClass('active');
        $(this).closest('li').addClass('active');

        var href = $(this).attr('data-href');
        updateMain(href);
    });

});

    function updateMain(src){
        if(src == '' || src == undefined){
            return ;
        }
        $.ajax({
            type: 'get',
            url: src,
            success: function (res) {
                $('.main').html(res);
            }
        });
    }

</script>
</body>
</html>