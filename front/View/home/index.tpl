<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bee's blog</title>

    <!-- Bootstrap -->
    <link href="../../Assert/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../Assert/css/common.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../../Assert/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../../Assert/bootstrap/js/bootstrap.min.js"></script>

    <style>
    </style>

</head>
<body>

<div class="container-fluid" id="content">
    <div class="col-lg-3 col-md-3 hidden-sm hidden-xs" id="leftMenu">
        <div class="container-fluid">
            <div class="panel panel-default">
                <div class="panel-heading"><h2>Bee的博客</h2></div>
                <div class="panel-body">
                    <form class="" action="#" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" id="search" placeholder="全站搜索">
                        </div>
                        <button type="submit" class="btn btn-default pull-right">搜索</button>
                    </form>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">近期文章</div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="#">redis基础</a></li>
                        <li class="list-group-item"><a href="#">php魔术方法</a></li>
                        <li class="list-group-item"><a href="#">更多...</a></li>
                    </ul>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">文章归档</div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="#">2015年10月</a></li>
                        <li class="list-group-item"><a href="#">2015年11月</a></li>
                        <li class="list-group-item"><a href="#">2015年12月</a></li>
                    </ul>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">分类目录</div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="#">redis</a></li>
                        <li class="list-group-item"><a href="#">php</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="hidden-lg hidden-md">
        <div class="container-fluid">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>Bee的学习网站
                        <button class="btn btn-default pull-right"><span class="glyphicon glyphicon-th-list"></span></button>
                    </h2>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-9 col-md-9"  id="rightContent">
        <div class="container-fluid">
            <?php foreach($blogs as $blog):?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3><?php echo $blog->title;?></h3>
                    </div>
                    <div class="panel-body">
                        <?php echo $blog->content; ?>
                    </div>
                    <div class="panel-footer">
                        <ul class="list-inline">
                            <li class="list-group-item"><?php echo date('Y年m月d日 H:i', $blog->create_time);?></li>
                            <li class="list-group-item">bee</li>
                            <li class="list-group-item"><?php echo $blog->tags;?></li>
                            <li class="list-group-item">评论</li>
                        </ul>
                    </div>
                </div>
            <?php endforeach;?>
        </div>
    </div>

</div>

<footer class="modal-footer">
    <div class="row">
        <ul class="list-inline text-center">
            <li><a href="www.beeblog.cn">beeblog.cn</a></li>
            <li><a href="#">报备号：xxxx</a></li>
        </ul>
    </div>
</footer>



</body>
</html>