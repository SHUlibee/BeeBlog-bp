<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bee's blog</title>

    <!-- Bootstrap -->
    <link href="/Assert/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/Assert/css/common.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/Assert/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/Assert/bootstrap/js/bootstrap.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
    </style>

</head>
<body>

<div class="container-fluid" id="frame">
    <!-- 登录框 -->
    <div class="col-md-offset-4 col-md-4 bg-success" id="login">
        <form class="form-horizontal" role="form" action="login" method="POST">
            <div class="form-group">
                <div class="panel panel-danger">
                    <div class="panel-title">
                        <h2 class="text-center">登录</h2>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-3 control-label">帐号</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="log" name="log"
                           placeholder="请输入帐号">
                </div>
            </div>
            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="pwd" name="pwd"
                           placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <div class="checkbox pull-right">
                        <label><input type="checkbox">请记住我</label>
                    </div>
                </div>
                <div class="col-sm-6">
                    <button type="submit" class="btn btn-default pull-right">登录</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>

</script>


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