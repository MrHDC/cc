
<%@page import="model.ReportOneUser"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
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
        <link rel="stylesheet" type="text/css" href="static/css/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="static/css/jquery.cluetip.css">
        <script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script> 
        <script type="text/javascript" src="static/js/owl.carousel.js"></script>
        <script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="static/js/jquery.magnific-popup.js"></script>
        <script type="text/javascript" src="static/js/jquery.hoverIntent.js"></script> 
        <script type="text/javascript" src="static/js/jquery.cluetip.js"></script>
        <style>
            .col-md-3 {
                z-index: -99;
            }
        </style>
    </head>
    <body>

        <div  class="container-cc">
            <header id="header">
                <div class="col-md-2 col-xs-2" id="logo">
                    <a href="/home">
                        <img src="http://cc.vuonuom.tv/static/images/chamcong_logo.png">
                    </a>
                </div><!-- logo -->
                <div class="col-md-8 col-xs-8">
                </div>
                <div class="col-md-2 col-xs-2 btn-group header-avatar">
                    <span class="expand dropdown-toggle" data-toggle="dropdown">
                        <a href="javascript:void(0)" class="dropdown-account ">
                            <span class="avatar"><img src="static/images/huudong.ptit.jpg" class="avatar" alt=""></span>
                            <span class="display_name" style="margin-right: 0;">${username}<i class="caret"></i> </span>
                            <span class="icon-down"><i class="ion-ios-arrow-down"></i></span>
                        </a>
                    </span>
                    <ul class="dropdown-menu dropdown-profile">
                        <li>
                            <a href="/changepassword1" class="open-edit-profile edit_profile">
                                <i class="fa fa-cog"></i>Đổi mật khẩu</a>
                        </li>

                        <li>
                            <a href="/Logout">
                                <i class="fa fa-power-off"></i> Đăng xuất</a>
                        </li>
                    </ul>


                </div><!-- avatar -->         
            </header>
        </div>


        <div class="page-container">
            <div class="page-sidebar page-sidebar-fixed">
                <ul class="left-sidebar">
                    <li>Bảng chức năng</li>
                    <li><a href="/addwork"><img src="static/images/tick.png">Chấm công</a></li>
                    <li><a href="/editwork"><img src="static/images/edit26.png">Sửa Ngày Công</a></li>
                    <li><a href="/register"><img src="static/images/add199.png">Thêm Nhân Sự</a></li>
                    <li><a href="/moneybonus"><img src="static/images/money132.png">Thêm Tiền Thưởng</a></li>
                    <li><a href="/report"><img src="static/images/report.png">Báo Cáo</a></li>
                </ul>
            </div>

            <div class="page-content">
                <div class="user-content-wrap">
                    <div class="user-statistic-week">     
                        <div class="top-s-header col-md-6"> 
                            <h3>Chấm Công cho nhân viên</h3>
                        </div>
                    </div>   

                    <div class="cc-list-week tab-content">
                        <table class="money_bonus">
                            <form:form method="POST" action="/editworkcheck">
                                <tr><td>Tên nhân sự:</td><td><form:select path="userID" items="${name}"/></td></tr>
                                <tr><td>Ngày làm việc:</td><td><input type="date" name="day"></td></tr>
                                <tr><td>Buổi làm việc:</td><td>
                                        <select name="buoi">
                                            <option value="sang">Sáng</option>
                                            <option value="chieu">Chiều</option>
                                        </select>
                                    </td></tr>
                                <tr><td>Giá trị buổi làm việc:</td><td>
                                        <select name="giatri">
                                            <option value="1">1.0</option>
                                            <option value="0.75">0.75</option>
                                            <option value="0.5">0.5</option>
                                            <option value="0.25">0.25</option>
                                        </select>
                                    </td></tr>
                                <tr><td class="cc_submit"><input type="submit" value="Chấm Công"/></td></tr>
                                    </form:form>
                        </table>

                    </div>


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


