<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>
</title>
<link rel="stylesheet" href="style.css"></link>
</head>
<body>
<div class="contain">
<img src="vcet3.png" alt="vcet3" id="img" style="width: 130px;">
        
        <form action="loginRegister" method="post">
            <label for="e-mail">Email</label><br>
            <input type="text" name="username" placeholder="Email"><br>
            <label for="username">Username</label><br>
            <input type="text" name="name" placeholder="Username"><br>
            <label for="Password" >Password</label><br>
            <input type="password" name="password1" placeholder="Password"><br>
            <button type="submit" value="register" name="submit">Register</button>
            <br>
            <div><a href="login.jsp" class="link" style="margin-left: 83px; color: white; font-size:15px">Already have an account</a></div>
        </form>
    </div>
</body>
</html>