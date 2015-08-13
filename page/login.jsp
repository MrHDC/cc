<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Chấm Công | Đăng Nhập</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="../../static/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../../static/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- iCheck -->
        <link href="../../static/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="../../static/images/icons/favicon.ico" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script>
            $(document).ready(function () {
                $('#loginForm').isHappy({
                    fields: {
                        // reference the field you're talking about, probably by `id`
                        // but you could certainly do $('[name=name]') as well.
                        '#username': {
                            required: true,
                            message: 'Might we inquire your name'
                        },
                        '#password': {
                            required: true,
                            message: 'How are we to reach you sans email??',
                            test: happy.email // this can be *any* function that returns true or false
                        }
                    }
                });
            });
        </script>

    </head>
    <body class="login-page">
        <div class="login-box">
            <div class="login-logo">
                <b>CC</b><small> v1.3</small>
            </div><!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Đăng Nhập</p>
                <form method="POST" action="loginCheck" id="loginForm">
                    <div class="form-group has-feedback">
                        <input name="username" id="username" type="text" maxlength="113" lang="en" class="form-control" placeholder="Tên đăng nhập"/>
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input name="password" id="password" type="password" class="form-control" autocomplete="off" placeholder="Mật khẩu của bạn"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">    
                        </div><!-- /.col -->
                        <div class="col-xs-4">
                            <button type="submit" class="btn btn-primary btn-block btn-flat">Ok</button>
                        </div><!-- /.col -->
                    </div>
                </form>
            </div><!-- /.login-box-body -->
            <div class="login-box-body">
                <c:choose>
                    <c:when test="${notil eq 'missingusername'}">
                        <div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle"></i> Nhập Username</div>
                    </c:when>
                    <c:when test="${notil eq 'missingpassword'}">
                        <div class="alert alert-warning" role="alert"><i class="fa fa-exclamation-triangle"></i> Nhập Mật Khẩu </div>
                    </c:when>
                    <c:when test="${notil eq 'fail'}">
                        <div class="alert alert-danger" role="alert"><i class="fa fa-exclamation-triangle"></i>Đăng Nhập Không Thành Công</div>
                    </c:when>
                    <c:otherwise>

                    </c:otherwise>   
                </c:choose>
            </div>
        </div><!-- /.login-box -->

        <!-- jQuery 2.1.3 -->
        <script src="../../static/plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="../../static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="../../static/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    </body>
</html>