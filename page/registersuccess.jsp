<%-- 
    Document   : registersuccess
    Created on : Nov 14, 2014, 6:03:28 PM
    Author     : NGUYEN-DINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thong Bao</title>
    </head>
    <body>
        noiti: ${noiti}
        
        <h3>Username: <core:out value="${username}"/>  Đã được tạo tài khoản thành công</h3>
        <script>
            setTimeout("location.href = '/home';", 1500);
        </script>
    </body>
</html>
