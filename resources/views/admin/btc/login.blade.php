<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">

    <title>Ban Tổ Chức -Khuất Thị Loan</title>

    <!-- Bootstrap Core CSS -->
    <base  href="{{asset('')}}">
    <link href="admin__asset/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="admin__asset/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="admin__asset/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="admin__asset/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Đăng nhập trang ban tổ chức</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="BanToChuc/dangnhap" method="POST">
                            @if(count($errors)>0)
                            <?php 
                             $errors=$errors->toArray();
                            ?>
                            @foreach ($errors as $key => $value)
                            <?php 
                            if($key=="email"){
                             $email=$value;
                            }else{
                            $password=$value;
                            }
                             ?>
                            @endforeach
                            @endif
                            
                            @if(session('thongbao'))
                            <div class="alert alert-danger" role="alert">
                                {{session('thongbao')}}
                            </div>
                            @endif
                            <input type="hidden" name="_token" value="{{csrf_token('')}}">
                            <fieldset>
                                <div class="form-group">
                                    <p style="color: red;">
                                    <?php if (!empty( $email)) {
                                       foreach ($email as $value) {
                                           echo $value;
                                       }
                                    } ?></p>
                                    <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <p style="color: red;"> <?php if (!empty( $password)) {
                                       foreach ($password as $value) {
                                           echo $value;
                                       }
                                    } ?></p>
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">Đăng Nhập</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="admin__asset/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="admin__asset/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="admin__asset/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="admin__asset/dist/js/sb-admin-2.js"></script>

</body>

</html>