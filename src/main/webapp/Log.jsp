<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.beans.Loging" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Page loging</title>



</head>
<body>

	
		

<h1>veuillez identifier </h1>
<div>
	<form action="logServlet" method="post">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="username" class="iform"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="password" name="password" class="iform"></td>
            </tr>
            <tr>
                <td>telephon</td>
                <td><input type="text" name="telephon" class="iform"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" class="iform"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="btns" class="iform"></td>
            </tr>
        </table>
    </form>
    <h3 style="color:red">
    
   
<c:out value="${message}"/>
   
    </h3>
</div>

</body>
</html>