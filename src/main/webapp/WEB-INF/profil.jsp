<%@ include file="../entete.jsp" %>


<title>Profil</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1>votre information personnelle</h1>

<jsp:useBean id="log" class="com.beans.Loging" scope="session"/>
<p id="mess2">
	
<c:out value="${message}"/>
</p>

<div class="cont">
<table class="tb" >
            <tr >
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
            </tr >
            <tr>
                <td>Email</td>
                <td><jsp:getProperty property="email" name="log"/></td>
            </tr >
            <tr>
                <td></td>
                <td></td>
            </tr>
            </div>
        </table>

	<form action="Logout">
	<input type="submit" value="logout"/>
	</form>

</body>
</html>