<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="/mc/static/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>


<form action="/mc/sms/upload" method="post" enctype="multipart/form-data" >
    上传: <input id="file" name="file" type="file" />
    <input type="submit" value="submit">
</form>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/mc/static/jquery/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/mc/static/bootstrap-3.3.5/js/bootstrap.min.js"></script>


<script>
    $(function(){
        $('#btn').click(function(){
            $.ajax({
                type: "post",
                url: "getSms",
                data: null,
                dataType: "json",
                success: function(data){
                    alert(data)
                },
                error:  function(xmlHttpRequest, textStatus, errorThrown){
                    alert(xmlHttpRequest);
                }
            });
        });
    });
</script>
</body>
</html>