<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Spring Login Example</title>
    </head>

    <body>
        <h3>Login Error !!! Click below to login again</h3>
        <table>
            <tr>
                <td><a href="login">Retry</a></td>
            </tr>
        </table>
        <script>
            setTimeout("location.href = '/';", 1500);
        </script>
    </body>
</html>