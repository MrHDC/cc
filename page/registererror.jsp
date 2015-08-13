<%-- 
    Document   : registererror
    Created on : Nov 14, 2014, 6:03:07 PM
    Author     : NGUYEN-DINH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Username: <core:out value="${username}"/> Đã tồn tại. chọn username khác</h3>
        <table>
            <tr>
                <td><a href="home">Retry</a></td>
            </tr>
        </table>
    </body>
</html>
