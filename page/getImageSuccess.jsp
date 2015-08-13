<%-- 
    Document   : getImageSuccess
    Created on : Nov 26, 2014, 11:56:34 AM
    Author     : NGUYEN-DINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chúc mừng bạn chấm công thành công</title>
        <meta name="viewport" content="width=device-width" />
        <meta charset="UTF-8">
        <link rel="shortcut icon" href="../../static/images/icons/favicon.ico" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="static/css/bootstrap.min1.css">
        <link rel="stylesheet" type="text/css" href="static/css/styleCC.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="static/css/owl.theme.css">
        <script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script> 
        <script type="text/javascript" src="static/js/owl.carousel.js"></script>
        <script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    pagination: false,
                    navigation: false, // Show next and prev buttons
                    autoPlay: 5000,
                    slideSpeed: 300,
                    paginationSpeed: 400,
                    singleItem: true
                            // "singleItem:true" is a shortcut for:
                            // items : 1, 
                            // itemsDesktop : false,
                            // itemsDesktopSmall : false,
                            // itemsTablet: false,
                            // itemsMobile : false
                });
            });
        </script>
    </head>
    <body>

        <div class="container">
            <div class="ccLeft col-md-6">
                <div class="notifi">
                    Chúc mừng <font style="color: red; ">${username}</font>! <br/>
                    Bạn đã chấm công thành công!
                    <p><a href="homeuser">Trở về trang chủ</a></p>
                    <script>
                    setTimeout("location.href = '/homeuser';",1500);
                    </script>
                </div>
            </div>

            <div class="ccRight col-md-6">
                <img src="static/images/bg.png" style="width: 100%; margin-top: 90px;">
            </div>

        </div>

        <footer>
            <div class="container">
                <div class="footerRight">
                    <img src="static/images/logo.png">
                    <p>@2015 Tinh Van Incubator. All right reserved</p>
                </div>
            </div>
        </footer>

        <script type="text/javascript" src="static/js2/bootstrap.min.js"></script>
    </body>
</html>


