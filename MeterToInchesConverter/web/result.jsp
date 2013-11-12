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
<%
    String hheadingText;
    String messageText;
    String linkText;
    double conversionFactor = 39.37;
    String metersToConvertString = request.getParameter( "meters" );
    try {
        double metersToConvertDouble = Double.parseDouble(metersToConvertString);
        double inchesDouble = metersToConvertDouble*conversionFactor;
        String inchesString = Double.toString(inchesDouble);
        hheadingText = "CONVERSION RESULT";
        messageText = metersToConvertString + " m = " + inchesString + " inches";
        linkText = "Convert another number";
    } catch (NumberFormatException nfe) {
        hheadingText = "CONVERSION FAILED";
        if (metersToConvertString == "") {
            messageText = "You forgot to specify the number of meters.";
        } else {
            messageText = "\"" + metersToConvertString + "\" is not a number.";
        }
        linkText = "Try once more";
    }
%>
<p><%= hheadingText %></p>
<p><%= messageText %></p>
<p><a href="index.jsp"><%= linkText %></a></p>
</body>
</html>