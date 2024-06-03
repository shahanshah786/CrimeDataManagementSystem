<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
</head>
<body>
<style>
body {
 background-image:url(Baground.jpg);
   margin:50px 50px;
   padding:50px 50px;
     background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
form {
border:none;
margin-left:200px;
margin-right:200px;

}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
 background-color:blue;
}


.container {
  padding: 16px;
}

span.psw {
  float: right;
}

</style>
</head>
<body>



<h2 style="text-align:center; color:yellow;"><u>USER LOGIN</u></h2>

<form action="<%= request.getContextPath()%>/login" method="post">
  
  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password"  id="myInput1" required>
    <input type="checkbox" onclick="myFunction1()">Show Password
        
    <button type="submit">Login</button>
  
        <span class="psw" style=color:yellow;>New User For Registration <a href="#" onclick="document.getElementById('id01').style.display='block'" style=color:red;>SIGN IN</a></span>
   
  </div>
 </form>
 
 
 <style>
 input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


.container {
  padding: 16px;
  background-image:url(Baground.jpg);
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

span.psw {
  float: right;
  }

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 70px;
  top: 40px;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
 
}
</style>
 

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="<%= request.getContextPath()%>/userdata" method="post">
 
  
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
    <label for="firstname"><b>FIRSTNAME</b></label>
      <input type="text" placeholder="Enter Firstneme" name="firstname" required>
      
      
      <label for="lastname"><b>LASTNAME</b></label>
      <input type="text" placeholder="Enter Lastname" name="lastname" required>
      
      <label for="phone"><b>PHONE NO</b></label>
      <input type="text" placeholder="Enter Phone" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits"   name="phone"   required>
      
      <label for="usr"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="usr" required>

      <label for="pws"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pws"  id="myInput" required>
      <input type="checkbox" onclick="myFunction()">Show Password
      <br>
      <br>
        <input type="reset" value="CLEAR">
        
      <button type="submit">SIGN</button>
   
    </div>
  </form>
</div>
  

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}



function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	
function myFunction1() {
	  var x = document.getElementById("myInput1");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>


</body>
</html>

