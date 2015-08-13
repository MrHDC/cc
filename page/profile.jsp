<%-- 
    Document   : profile
    Created on : Jan 26, 2015, 10:02:31 PM
    Author     : NGUYEN-DINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thông tin cá nhân</title>
        <meta name="viewport" content="width=device-width" />
        <meta charset="UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="static/css/styleCC.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.theme.css">
        <script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script> 
        <script type="text/javascript" src="static/js/owl.carousel.js"></script>
        <script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
    </head>
    <body>

        <div  class="container-cc">
            <header id="header">
                <div class="col-md-2 col-xs-2" id="logo">
                    <a href="/homeuser">
                        <img src="http://cc.vuonuom.tv/static/images/chamcong_logo.png">
                    </a>
                </div><!-- logo -->
                <div class="col-md-8 col-xs-8">
                </div>
                <div class="col-md-2 col-xs-2 btn-group header-avatar">

                    <span class="expand dropdown-toggle" type="span" data-toggle="dropdown">
                        <a href="javascript:void(0)" class="dropdown-account ">
                            <span class="avatar"><img src="static/images/huudong.ptit.jpg" class="avatar" alt=""></span>
                            <span class="display_name" style="margin-right: 0;">${name} <i class="caret"></i> </span>
                            <span class="icon-down"><i class="ion-ios-arrow-down"></i></span>
                        </a>
                    </span>
                    <ul class="dropdown-menu dropdown-profile">
                        <li>
                            <a href="/profile">
                                <i class="fa fa-user"></i> Thông tin cá nhân </a>
                        </li>
                        <li>
                            <a href="/changepassword" class="open-edit-profile edit_profile">
                                <i class="fa fa-cog"></i>   Đổi mật khẩu          </a>
                        </li>

                        <li>
                            <a href="/Logout">
                                <i class="fa fa-power-off"></i> Đăng xuất               </a>
                        </li>
                    </ul>


                </div><!-- avatar -->         
            </header>
        </div>


        <div class="page-container">
            <div class="page-sidebar page-sidebar-fixed">
                <ul class="left-sidebar">
                    <li>Bảng chức năng</li>
                    <li><a href="/index"><img src="static/images/tick.png">Chấm công</a></li>
                    <li><a href="homeuser"><img src="static/images/date.png">Xem chấm công</a></li>
                </ul>
            </div>

            <div class="page-content">
                <div class="page-content-wrap">
                    <h3>Thông tin cá nhân</h3>
                    <ul class="cc-profile">
                        
                        <li>
                            <span class="textLeft">Họ và tên:</span>
                            <span class="textRight">${name}</span>
                        </li>
                        <li>
                            <span class="textLeft">Team:</span>
                            <span class="textRight">${team}</span>
                        </li>
                    </ul>    
                </div>
            </div>
        </div>


        <footer>
            <div class="footerRight">
                <img src="static/images/logo.png">
                <p>@2015 Tinh Van Incubator. All right reserved</p>
            </div>
        </footer>

        <script type="text/javascript" src="static/js/bootstrap.min.js"></script>
    </body>
</html>


