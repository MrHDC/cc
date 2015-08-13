<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Locale"%>
<%@page import="model.ReportOneUser"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chấm Công | Report</title>
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
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="../../static/images/icons/favicon.ico" />
        <!-- CC old Style-->
        <link rel="stylesheet" type="text/css" href="static/css/styleCC.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.theme.css">
        <link rel="stylesheet" type="text/css" href="static/css/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="static/css/jquery.cluetip.css">

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
                <a href="/home" class="logo"><b>CC</b> <small>v1.2</small></a>
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
                                    <span class="hidden-xs">${username}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                                        <p>
                                            ${username}
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
                            <p>${username}</p>

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
                            <a href="/addwork">
                                <i class="fa fa-check-square"></i> <span>Chấm Công</span>
                            </a>
                        </li>
                        <li>
                            <a href="/register">
                                <i class="fa fa-user-plus"></i> <span>Thêm Nhân Sự</span>
                            </a>
                        </li>
                        <li>
                            <a href="/moneybonus">
                                <i class="fa fa-money"></i> <span>Thêm Tiền Thưởng</span>
                            </a>
                        </li>
                        <li>
                            <a href="/report">
                                <i class="fa fa-book"></i> <span>Báo Cáo</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <div class="box box-info">
                        <div class="box-header"> 
                            <h3 class="box-title">Chọn Thời Gian</h3>                            
                        </div>
                        <div class="box-body"> 
                            <form class="form-inline" action="/report" method="get">
                                <div class="form-group">
                                    <label> Tháng</label>
                                    <select name="month" class="form-control">
                                        <option value="01" ${month == '1' ? 'selected' : ''}>01</option>
                                        <option value="02" ${month == '2' ? 'selected' : ''}>02</option>
                                        <option value="03" ${month == '3' ? 'selected' : ''}>03</option>
                                        <option value="04" ${month == '4' ? 'selected' : ''}>04</option>
                                        <option value="05" ${month == '5' ? 'selected' : ''}>05</option>
                                        <option value="06" ${month == '6' ? 'selected' : ''}>06</option>
                                        <option value="07" ${month == '7' ? 'selected' : ''}>07</option>
                                        <option value="08" ${month == '8' ? 'selected' : ''}>08</option>
                                        <option value="09" ${month == '9' ? 'selected' : ''}>09</option>
                                        <option value="10" ${month == '10' ? 'selected' : ''}>10</option>
                                        <option value="11" ${month == '11' ? 'selected' : ''}>11</option>
                                        <option value="12" ${month == '12' ? 'selected' : ''}>12</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label >Năm</label>
                                    <select name="year" class="form-control">
                                        <option value="2014">2014</option>
                                        <option selected value="2015">2015</option>
                                        <option value="2016">2016</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Chọn</button>
                            </form>


                        </div>
                    </div>
                    <div class="box box-info">
                        <div class="box-header">     
                            <h3 class="box-title">Báo Cáo Tháng <strong class="text-primary">${month}</strong> Năm <strong class="text-primary">${year}</strong></h3>
                            <div class="box-tools">
                                <ul class="pagination pagination-sm no-margin">
                                    <li><a href="/export?month=${month}&year=${year}">Xuất file Excel</a></li>
                                    <li><a href="/sendEmail?month=${month}&year=${year}">Gửi Email</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content">
                            <table id="customers2" class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Họ Và Tên</th>
                                        <th>Tổng Ngày Công</th>
                                        <th>Tiền hỗ trợ/Buổi</th>
                                        <th>Tiền Thưởng</th>
                                        <th>Tổng tiền</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="listrMonth" items="${listrMonth}" varStatus="status">
                                        <tr>
                                            <td>${status.index + 1}</td>
                                            <td>${listrMonth.user.name}</td>
                                            <td>${listrMonth.countValues}</td>
                                            <c:choose>
                                                <c:when test="${listrMonth.user.typeUser==0}">
                                                    <td>50.000</td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td>25.000</td>
                                                </c:otherwise>
                                            </c:choose>
                                            <td>    
                                                <c:forEach var="listMoneyBonus" items="${listrMonth.listMoneyBonus}" varStatus="status"> 
                                                    ${listMoneyBonus.nameBonus}: ${listMoneyBonus.money}</br>
                                                </c:forEach> 
                                            </td>
                                            <td>${listrMonth.sumMoney}</td>
                                        </tr>
                                    </c:forEach>  
                                </tbody>
                            </table>
                            <div class="box-footer">

                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!-- /.content-wrapper -->
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
        <!-- AdminLTE App -->
        <script src="static/dist/js/app.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="static/js/owl.carousel.js"></script>
        <script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="static/js/jquery.magnific-popup.js"></script>
        <script type="text/javascript" src="static/js/jquery.hoverIntent.js"></script> 
        <script type="text/javascript" src="static/js/jquery.cluetip.js"></script>



        <script>
            $(document).ready(function () {
                $('#myTab a:last').tab('show');
                for (i = 1; i < 20; i++) {
                    jtID = $('td.jt' + i);
                    jtID.cluetip({cluetipClass: 'rounded', arrows: false, local: true, hideLocal: false});
                }
                $('.zoom-gallery').magnificPopup({
                    delegate: 'a',
                    type: 'image',
                    closeOnContentClick: false,
                    closeBtnInside: false,
                    mainClass: 'mfp-with-zoom mfp-img-mobile',
                    image: {
                        verticalFit: true,
                        titleSrc: function (item) {
                            return item.el.attr('title');
                        }
                    },
                    gallery: {
                        enabled: true
                    },
                    zoom: {
                        enabled: true,
                        duration: 300, // don't foget to change the duration also in CSS
                        opener: function (element) {
                            return element.find('img');
                        }
                    }

                });
            })
        </script>

        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="static/dist/js/pages/dashboard.js" type="text/javascript"></script>

    </body>
</html>