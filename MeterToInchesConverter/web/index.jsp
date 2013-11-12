<%--
  Created by IntelliJ IDEA.
  User: arkadiy.sychov
  Date: 11/12/13
  Time: 6:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meters to inches</title>
    <style type="text/css">
        body {
            font-family: verdana, tahoma, sans-serif;
            color: #333366;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>
<p>METERS TO INCHES CONVERSION</p>
<form method=post action="result.jsp">
    <p>Enter amount in meters (m):
        <input type=text name=meters size=16>
    </p>
    <p><input type=submit value="Convert into inches"></p>
</form>
</body>
</html>