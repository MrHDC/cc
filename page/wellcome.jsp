<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chấm Công</title>
    </head>
    <body>
        <%
            String redirectURL = "login";
            response.sendRedirect(redirectURL);
        %>
        <h1>HỆ THỐNG CHẤM CÔNG TVi</h1>
        <a href="/login">Click Vào đây để đăng nhập</a>
    </body>
</html>
