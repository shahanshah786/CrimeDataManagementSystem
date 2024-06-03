<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SEARCH CRIMINAL</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="navbar">
        <a href="UserPage.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
    </div>

    <div class="container">
        <header>
            <h1 style="color: yellow; margin-top:10px;"><b>CHEACK STATUS</b></h1>
        </header>
         <br>
        <form action="reportstatus" method="post">
        
            <label for="status" style="color: yellow;" >ENTER REPORT NUMBER</label>
            <input type="text" id="status" name="your_number" placeholder="Enter Your Numnber" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits" required>
       
            <button type="submit">SEARCH</button>
        </form> 
      </div>
        
        
 <style>
        
.container {

    max-width: 600px;
    margin: 0 auto;
    padding: 40px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    background-image: url('Baground.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
}
.container select {
    margin-bottom: px;
    padding: 10px 18px;
    background-color: white;
    border: none;
    border-radius: 3px;
}
header {
    text-align: center;
    margin-bottom: 30px;
}

h1 {
    font-size: 30px;
    margin: 0;
}

@media screen and (max-width:600px) {
    h1 {
        font-size: 20px;
    }
    
}
img {
    width: 100%;
    height: auto;
    margin-bottom: 30px;
}


form {
    display: flex;
    flex-direction: column;
}

label {
    font-weight: bold;
    margin-bottom: 8px;
}
input[type="text"],
input[type="password"],
input[type="date"],
input[type="tel"],
textarea {
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 8px;
}

button:hover {
    background-color: #a8e618;
}

.head-hero {
    display: flex;
    align-items: center;
}

input[type="file"] {
    display: none;
}

.upload-hero {
    background-color: hwb(0 15% 34%);
    color: #fff;
    padding: 8px 15px;
    border-radius: 20px;
    cursor: pointer;
}

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');


* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

:root {
	--blue: #0071FF;
	--light-blue: #B6DBF6;
	--dark-blue: #005DD1;
	--grey: #f2f2f2;
}

.img-area {
	position: relative;
	width: 200px;
	height: 120px;
	background: var(--grey);
	margin-bottom: 10px;
	border-radius: 15px;
	overflow: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	
}
.img-area .icon {
	font-size: 100px;
}
.img-area h3 {
	font-size: 10px;
	font-weight: 200;
	margin-bottom: 6px;
}
.img-area p {
	color: #999;
}
.img-area p span {
	font-weight: 600;
}
.img-area img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
	z-index: 100;
}
.img-area::before {
	content: attr(data-img);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .5);
	color: #fff;
	font-weight: 500;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
	pointer-events: none;
	opacity: 0;
	transition: all .3s ease;
	z-index: 200;
}
.img-area.active:hover::before {
	opacity: 1;
}
.select-image {
	display: block;
	width: 100%;
	padding: 16px 0;
	border-radius: 15px;
	background: var(--blue);
	color: #fff;
	font-weight: 500;
	font-size: 16px;
	border: none;
	cursor: pointer;
	transition: all .3s ease;
}
.select-image:hover {
	background: var(--dark-blue);
}






.navbar {
   background-image:linear-gradient(to right, #00bfff, #00ffd5);
        overflow: hidden;
        position: fixed; /* Fixed position to stay at the top */
        width: 100%; /* Make it full width */
        z-index: 1000; /* Higher z-index to keep it above other content */
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

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('Baground.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center center;
         /* Adjust the margin to make content start below the navbar */
    }


        </style>
</body>
</html>