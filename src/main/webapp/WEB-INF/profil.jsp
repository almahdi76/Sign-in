<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profil</title>
</head>
<body>
<h1>votre information personnelle</h1>

<jsp:useBean id="log" class="com.beans.Loging" scope="session"/>
<b>

<c:out value="${message}"/>
</b>


<table>
            <tr>
                <td>Name</td>
                <td> <jsp:getProperty property="username" name="log"/>  </td>
            </tr>
            <tr>
                <td>password</td>
                <td><jsp:getProperty property="password" name="log"/>  </td>
            </tr>
            <tr>
                <td>telephon</td>
                <td><jsp:getProperty property="telephon" name="log"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><jsp:getProperty property="email" name="log"/></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table>



</body>
</html>