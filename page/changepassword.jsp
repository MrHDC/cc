<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chấm Công | Đổi Mật Khẩu</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
        <!-- FontAwesome 4.3.0 -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons 2.0.0 -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
        <!-- Theme style -->
        <link href="static/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="static/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="../../static/images/icons/favicon.ico" />
        <link href="static/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />

        <!-- CC old Style-->
        <link rel="stylesheet" type="text/css" href="static/css/styleCC.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.theme.css">
        <link rel="stylesheet" type="text/css" href="static/css/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="static/css/jquery.cluetip.css">
        <script type="text/javascript" src="static/js/owl.carousel.js"></script>
        <script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="static/js/jquery.magnific-popup.js"></script>
        <script type="text/javascript" src="static/js/jquery.hoverIntent.js"></script> 
        <script type="text/javascript" src="static/js/jquery.cluetip.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="/homeuser" class="logo"><b>CC</b> <small>v1.2</small></a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="static/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                                    <span class="hidden-xs">${name}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                                        <p>
                                            ${name}
                                            <small></small>
                                        </p>
                                    </li>
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="/changepassword" class="btn btn-default btn-flat">Đổi Mật Khẩu</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="/Logout" class="btn btn-default btn-flat">Thoát</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>${name}</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Tìm Kiếm..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">CHỨC NĂNG CHÍNH</li>
                        <li>
                            <a href="/index">
                                <i class="fa fa-check-square"></i> <span>Chấm Công</span>
                            </a>
                        </li>
                        <li>
                            <a href="/homeuser">
                                <i class="fa fa-calendar"></i> <span>Xem Chấm Công</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-eye"></i> <span>Hiển Thị</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a class="list-week" href="#list-week" aria-controls="photo" role="tab" data-toggle="tab">
                                        <i class="fa fa-list-ol"></i>
                                        <span>Danh sách</span>
                                    </a>
                                </li>
                                <li role="presentation" class="cc-tick">
                                    <a class="photo" href="#photo" aria-controls="photo" role="tab" data-toggle="tab">
                                        <i class="fa fa-picture-o"></i>
                                        <span>Photo</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <div class="col-md-6">
                        <div class="box box-info ">
                            <div class="box-header">
                                <h3 class="box-title">
                                    Thay Đổi Mật Khẩu
                                </h3>
                                <c:choose>
                                    <c:when test="${notil eq 'empty'}">
                                        <div class="alert alert-danger" role="alert"><i class="fa fa-exclamation-triangle"></i>Bạn Cần Điền Đầy Đủ Thông Tin</div>
                                    </c:when>
                                    <c:when test="${notil eq 'success'}">
                                        <div class="alert alert-success" role="alert"><i class="fa fa-check"></i>Thay đổi mật khẩu thành công</div>
                                    </c:when>
                                    <c:when test="${notil eq 'donotmatch'}">
                                        <div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle"></i>Không Khớp Mật Khẩu Cũ</div>
                                    </c:when>
                                    <c:when test="${notil eq 'wrongoldpass'}">
                                        <div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle"></i>Mật khẩu cũ sai!!!</i></div>
                                    </c:when>
                                    <c:otherwise>

                                    </c:otherwise>   
                                </c:choose>
                            </div>
                            
                            <div class="box-body">
                                <form method="POST" action="/changepasswordCheck" class="form form-horizontal" >
                                    <div class="form-group">
                                        <label class="col-md-3">Mật khẩu cũ: </label>
                                        <div class="col-md-9">
                                            <input type="password" name="password1" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3"> Mật khấu mới: </label>
                                        <div class="col-md-9">
                                            <input type="password" name="password2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3">Nhập lại mật khấu mới: </label>
                                        <div class="col-md-9">
                                            <input type="password" name="password3" class="form-control">
                                        </div>
                                    </div>
                                    <input type="submit" value="Chấp Nhận" class="btn btn-primary" />
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <footer class="main-footer">
                <img src="static/images/logo.png">
                <b>@2015 <a href="http://vuonuomtinhvan.com/" >Tinh Van Incubator</a>. All right reserved</b>
            </footer>
        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.3 -->
        <script src="static/plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- jQuery UI 1.11.2 -->
        <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>    
        <!-- Morris.js charts -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="static/plugins/morris/morris.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="static/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <script src="static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <!-- jQuery Knob Chart -->
        <script src="static/plugins/knob/jquery.knob.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="static/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- datepicker -->
        <script src="static/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="static/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- Slimscroll -->
        <script src="static/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src='static/plugins/fastclick/fastclick.min.js'></script>
        <!-- AdminLTE App -->
        <script src="static/dist/js/app.min.js" type="text/javascript"></script>

        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="static/dist/js/pages/dashboard.js" type="text/javascript"></script>

        <!-- AdminLTE for demo purposes -->
        <script src="static/dist/js/demo.js" type="text/javascript"></script>
    </body>
</html>