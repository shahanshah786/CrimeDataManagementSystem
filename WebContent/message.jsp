<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success massage</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css"> 
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<div class="navbar">
        <a href="crimnaladd.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
    </div>
    
	<center style="margin-top:80px; margin-left:200px; margin-right:200px;">
		<div class="alert alert-success">
			<strong><%=request.getAttribute("Message")%></strong>
		</div>
	</center>
	
	
	
	<style>
	
	body {
	font-family: Arial, sans-serif;
    margin: 0;
    padding: 0 ;
    background-image: url('Baground.jpg'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center center;
	}
	
.navbar {
  background-image:linear-gradient(to right, #00bfff, #00ffd5);
      overflow: hidden;
    margin: 0;
    padding: 0;

 }
 .navbar a {
    float: left;
    font-size: 16px;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    }

    .navbar a:hover{

        background-color: rgb(59, 19, 180);
    } 
	
	</style>
</body>
</html>