<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello world!</title>
    <!-- zui -->
    <link href="/Assert/zui/css/zui.min.css" rel="stylesheet">
    <link href="/Assert/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Assert/bootstrap/lib/bootstrap-table-1.11.1/bootstrap-table.min.css" rel="stylesheet">
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
            <a href="#"><i class="icon icon-time"></i>文章管理</a>
            <ul>
                <li><a href="#">全部</a></li>
                <li><a href="#">已发表</a></li>
                <li><a href="#">草稿箱</a></li>
                <li><a href="#">回收站</a></li>
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
    <table id="table"></table>

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
<script src="/Assert/jquery-1.11.3.min.js"></script>
<!-- ZUI Javascript组件 -->
<script src="/Assert/zui/js/zui.min.js"></script>
<script src="/Assert/bootstrap/bootstrap.min.js"></script>
<script src="/Assert/bootstrap/lib/bootstrap-table-1.11.1/bootstrap-table.min.js"></script>
<script src="/Assert/bootstrap/lib/bootstrap-table-1.11.1/locale/bootstrap-table-zh-CN.js"></script>

<script>

    $('#table').bootstrapTable({
        url: 'blog/list',
        columns: [
            {field: 'id',title: 'ID'},
            {field: 'title',title: '标题'},
            {field: 'author_id',title: '作者'},
            {field: 'category_id',title: '分类'},
            {field: 'tags',title: '标签'},
            {field: 'content',title: '内容'},
            {field: 'status',title: '状态'}
        ]
    });

</script>

</body>
</html>