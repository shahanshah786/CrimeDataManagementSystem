<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USerInsertNEWCase</title>
</head>
<body>
<div class="navbar">
        <a href="UserPage.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
    </div>
    <div class="container">
        <header>
            <h1 style="color: yellow; margin-top:20px;"><b>FIR REPORT</b></h1>
        </header>
        <img src="images.png" alt="Image">
        <form action="newuseraddcase" method="post" id="yourFormId" > 
            <label for="firstname" style="color: yellow;" >YOUR NAME:</label>
            <input type="text" id="firstname" name="firstname" required>
            <label for="lastname" style="color: yellow;"> CRIMINAL NAME:</label>
            <input type="text" id="lastname" name="name"   >
            
            <label for="fathername" style="color: yellow;">CRIMINAL FATHER NAME:</label>
            <input type="text" id="fathername" name="fathername"   >
            
            <label for="mothername" style="color: yellow;">CRIMINAL MOTHER NAME:</label>
            <input type="text" id="mothername" name="mothername"   >
            
            <label for="phone" style="color: yellow;">YOUR NUMBER:</label>
            <input type="text"  name="phone" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits" required  >
            
            <label  for="age" style="color: yellow;" >CRIMINAL DOB</label> 
            <input class="age" type="date" id="age" name="age" required >
            
            
            <label for="religion" style="color: yellow;"> CRIMNAL RELIGION</label>
            <select id="gender" name="religion">
 						 <option value="muslim">MUSLIM</option>
  						<option value="hindu">HINDU</option>
						 <option value="others">OTHERS</option>
			</select>
              
            <label for="gender" style="color: yellow;">CRIMINAL GENDER</label>
            <select id="gender" name="gender">
 						 <option value="male">MALE</option>
  						<option value="female">FEMALE</option>
						 <option value="others">OTHERS</option>
			</select>
			
			<label  for="fir_date"  style="color: yellow;" >FIR DATE</label> 
            <input class="date" type="date" id="fir_date" name="fir_date"  >
			
			
			<label for="cases" id="label" style="color: yellow;" >CASE TYPES</label>
					<select id="cases" name="cases" required id="caseDropdown">
  					<option style="color: green;" >Theft CASE</option>
  					<option style="color: blue;" >Fight Case</option>
  					<option style="color: blue;" >Other</option>
				</select>


			<label for="reasion" style="color: yellow;">CASE REGION</label>
			<textarea  name="region"></textarea>
            
            <label for="address" style="color: yellow;">YOUR ADDRESS</label>
            <textarea id="address" name="Youraddress" ></textarea>
            
             <label for="address" style="color: yellow;">CRIMNAL ADDRESS</label>
            <textarea id="address" name="Crimnaladdress" ></textarea>
            
         <label for="religion" style="color: yellow;">REQUEST WAIT</label>
            <select id="gender" name="request_wait">
 						 <option value="waiting">WAITING</option>
			</select>   
			
            <button type="submit" >ADD INFORMATION</button>   
            
            </form>
                
            </div>
     





















    <style>
    


.sign {

}
@media screen and (max-width:600px) {
    .sign{
        text-align: center;       
    }  
}
.age {
    padding: 10px 10px;
    margin-bottom: 20px;
}
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
    margin-bottom: 30px;
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
input[type="tel"],
input[type="email"],
input[type="date"],
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
.container2 {
	max-width: 350px;
	height: 200px;
	background: #fff;
	padding: 30px;
	border-radius: 20px;
	justify-content: center;
	align-items: center;
	background: var(--light-blue);
    margin-top: 20px;
    margin-left: 100px;
    margin-bottom: 20px;
}
.img-area {
	position: relative;
	width: 300px;
	height: 150px;
	background: var(--grey);
	margin-bottom: 20px;
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
	font-size: 20px;
	font-weight: 500;
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
   

    
    <% String alertMessage = (String) request.getAttribute("alertMessage"); %>
<% if (alertMessage != null) { %>
    <script>
        alert("<%= alertMessage %>");
    </script>
<% } %>
    
    
    <style>
  
  #crimeRegionLabel,
  #crimeRegion {
    display: none;
  }
</style>
    


</body>
</html>