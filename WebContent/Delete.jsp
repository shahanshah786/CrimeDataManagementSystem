<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Delete Data</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('Baground.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }

        .navbar {
            background-image:linear-gradient(to right, #00bfff, #00ffd5);
            overflow: hidden;
        }

        .navbar a {
            float: left;
            font-size: 16px;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: rgb(59, 19, 180);
        }
        
        
        .delete {
          margin-left:400px;
         color:yellow;
         }
         .container {
            margin-top:50px;
          }
         
    </style>
    
    
</head>
<body>
<div class="navbar">
    <a href="findcrimnal.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
</div>

<div class="container">
<form action="DataDeleteServlet" method="post">
    <label class="delete" for="id">ENTER YOUR ID</label>
    
    <input type="text" name="id" id="id">
    <input type="submit" value="Delete">
</form>
</div>


</body>
</html>

