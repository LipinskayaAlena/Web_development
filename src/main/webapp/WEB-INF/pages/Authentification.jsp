<html>
<head>
    <title>Authentification</title>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
    <link href="../../css/style.css" rel="stylesheet"/>
    <link rel="icon" href="../../images/sign.png" type="image/x-icon" />
</head>
<body background="../../images/background.jpg" >
    <table>
        <tr>
            <td>
                <img src="../../images/signMenu.png" alt="Sign" width="100" height="50">
            </td>
            <td>
                <h1 class="styleText">MyCalendar</h1>
            </td>
        </tr>
    </table>
    <c:url var="loginUrl" value="/j_spring_security_check"/>
    <form id="login-form" action="${loginUrl}" method="POST" target="_blank" style="position: fixed; top: 35%; left: 42%; width: 200px">
        Login:<br /> <input type="username" name="text" style="width: 200px"/><br />
        Password:<br /> <input type="password" name="password" maxlength="8" style="width: 200px"/><br />
       <a href="november.jsp"><input type="button" name="signIn" value="Enter" class="button" align="center" style="width: 200px"></a>
    </form>
    <a href="Registration"><input name="registr" value="Registration" type="button" class="button"
                                       style="position: fixed; left:42%; top: 60%; width: 200px" /></a>
</body>
</html>
