<%--
  Created by IntelliJ IDEA.
  User: phife
  Date: 11/1/22
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <style>
        form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: 10em;
        }
        label{
            margin-top: 10px;
            margin-bottom: 10px;
            text-align: start;
            font-family: Arial;
            font-size: large;
            display: flex;
            align-items: flex-start;
            color: red;
        }
        input{
            width: 45em;
            height: 3em;
            border-radius: 7px;
            font-size: medium;
            border: 2px solid lightgrey;

        }
        button{
            width: 40em;
            height: 3em;
            color: white;
            background-color: lightcoral;
            margin-top: 10px;
            border-radius: 5px;
            border: 2px solid lightgrey;
            font-size: large;
        }
        p{
            font-size: small;
            color: #373737;
        }
    </style>
</head>
<body>

<form method="post" action="/login.jsp">
    <label for="username">Username</label>
        <input type="text" name="username" placeholder="Enter your username...">
    <label for="password">Password</label>
        <input type="password" name="password" placeholder="Enter your password...">
    <button type="submit">Login</button>
</form>
<p style="margin-top: 3em">"username" parameter:  ${param.username}</p>
<p>"password" parameter: ${param.password}</p>
<c:choose>
    <c:when test='${param.username.equalsIgnoreCase("admin")}'>
        <%response.sendRedirect("/profile.jsp");%>
    </c:when>

</c:choose>

</body>
</html>
