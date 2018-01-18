<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello world!</title>
    <!-- zui -->
    <link href="/Assert/zui/css/zui.min.css" rel="stylesheet">
    <link href="/Assert/zui/lib/datagrid/zui.datagrid.min.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            ...
        </div>
        <div class="collapse navbar-collapse navbar-collapse-example">
            ...
            <!-- 导航中的表单 -->
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>
    </div>
</nav>

<div class="col-lg-2 col-md-3">
<nav class="menu" data-ride="menu">
    <ul id="treeMenu" class="tree tree-menu" data-ride="tree">
        <li><a href="#"><i class="icon icon-th"></i>首页</a></li>
        <li><a href="#"><i class="icon icon-user"></i>个人资料</a></li>
        <li>
            <a href="#"><i class="icon icon-time"></i>更新时间</a>
            <ul>
                <li><a href="#">今天</a></li>
                <li><a href="#">明天</a></li>
                <li><a href="#">昨天</a></li>
                <li><a href="#">本周</a></li>
            </ul>
        </li>
        <li><a href="#"><i class="icon icon-trash"></i>垃圾篓</a></li>
        <li><a href="#"><i class="icon icon-list-ul"></i>全部</a></li>
        <li class="open">
            <a href="#"><i class="icon icon-tasks"></i>状态</a>
            <ul>
                <li>
                    <a href="#"><i class="icon icon-circle-blank"></i>已就绪</a>
                    <ul>
                        <li><a href="#">已取消</a></li>
                        <li><a href="#">已关闭</a></li>
                    </ul>
                </li>
                <li class="active"><a href="#"><i class="icon icon-play-sign"></i>进行中</a></li>
                <li><a href="#"><i class="icon icon-ok-sign"></i>已完成</a></li>
            </ul>
        </li>
    </ul>
</nav>
</div>
<div class="col-lg-10 col-md-9">
    <div id="myDataGrid" class="datagrid"></div>

    <article class="article">
        <!-- 文章头部 -->
        <header>
            <h1>文章标题</h1>
            <!-- 文章属性列表 -->
            <dl class="dl-inline">
                <dt>属性</dt>
                <dd>值</dd>
                ...
            </dl>
            <div class="abstract">
                <p>摘要信息</p>
            </div>
        </header>
        <!-- 文章正文部分 -->
        <section class="content">
            ...
        </section>
        <!-- 文章底部 -->
        <footer>
            <ul class="pager pager-justify">
                <li class="previous"><a href="#"><i class="icon-arrow-left"></i> 上一篇</a></li>
                <li><a href="#"><i class="icon-list-ul"></i> 目录</a></li>
                <li class="next disabled"><a href="#">没有下一篇 <i class="icon-arrow-right"></i></a></li>
            </ul>
        </footer>
    </article>

</div>

<!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- ZUI Javascript组件 -->
<script src="/Assert/zui/js/zui.min.js"></script>
<script src="/Assert/zui/lib/datagrid/zui.datagrid.min.js"></script>

<script>

    $('#myDataGrid').datagrid({
        dataSource: {
            cols:[
                {name: 'time', label: '时间', width: 132},
                {name: 'hero', label: '英雄', width: 134},
                {name: 'action', label: '动作', width: 109},
                {name: 'target', label: '目标', width: 109},
                {name: 'desc', label: '描述', width: 287}
            ],
            array:[
                {time: '00:11:12', hero:'幻影刺客', action: '击杀', target: '斧王', desc: '幻影刺客击杀了斧王。'},
                {time: '00:13:22', hero:'幻影刺客', action: '购买了', target: '隐刀', desc: '幻影刺客购买了隐刀。'},
                {time: '00:19:36', hero:'斧王', action: '购买了', target: '黑皇杖', desc: '斧王购买了黑皇杖。'},
                {time: '00:21:43', hero:'力丸', action: '购买了', target: '隐刀', desc: '力丸购买了隐刀。'}
            ]
        },
        // ... 其他初始化选项
    });

</script>

</body>
</html>