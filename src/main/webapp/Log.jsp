<%@ include file="entete.jsp" %>
<title>Page loging</title>
 <link rel="stylesheet" href="css/style.css">


</head>
<body>

	<h1>veuillez identifier </h1>
		
<div class="cont">


	<form action="logServlet" method="post">
        <table class="tb">
            <tr>
                <td>Name</td>
                <td><input type="text" name="username" class="iform"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="password" name="password" class="iform"></td>
            </tr>
            <tr>
                <td>telephone</td>
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
    
  
    </h3>

</div>
<p id="mesg">  
<c:out value="${message}"/>
  </p>
</body>
</html>