<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>CRIME BRANCH</title>
</head>
<body>
<div class="container">
        <header>
            <h1 style="color: yellow;"><b>ADMIN LOGIN</b></h1>
        </header>
        <img src="images.png" alt="Image">
        <form action="adminuser" method="post">
            <label for="username" style="color: yellow;">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter UserName...."  required>
            <label for="password "style="color: yellow;">Password</label>
            <input  type="password" id="password" name="password" placeholder="Enter Password...."   required>
                  <input class="cheackbox" type="checkbox" onclick="myFunction()"><p class="p">Show Password</p>
             
            <button type="submit" onclick="func()">Login </button> 
        </form>
    </div>
 
    
    
    
 <style>
     .cheackbox{ margin-left:-380px;}
     .p { margin-top:-20px; margin-left:20px;}
 
        body {
    font-family: Arial, sans-serif;
    margin: 60px;
    padding: 0 auto;
    background-image: url('Baground.jpg'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center center;
    
}
.sign {

}

@media screen and (max-width:600px) {
    .sign{
        text-align: center;
        
    }
    
}



.container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    background-image: url('Baground.jpg'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
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



.upload-container {
    display: flex;
    align-items: center;
}



input[type="file"] {
    display: none;
}

.upload-label {
    background-color: hwb(0 15% 34%);
    color: #fff;
    padding: 10px 15px;
    border-radius: 35px;
    cursor: pointer;
    width:90px ;
    text-align: center;
}

@media screen and (max-width:600px) {
    .upload-label {
        padding: 5px 8px;
        width: 90px;
        text-align: center;
    }
    
}

.upload-label:hover {
    background-color: hwb(221 7% 26%);
}

 

/* head */


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

@media screen and(max-width:600px) {
    .upload-hero {
        padding: 3px 5px;
    }
    
}

.upload-hero:hover {
    background-color: hsl(91, 95%, 39%);
}



.head2{
    display: flex;
    align-items: center;
}

input[type="file"] {
    display: none;
}

.upload-head2 {
    background-color: hwb(0 15% 34%);
    color: #fff;
    padding: 12px 14px;
    border-radius: 50px;
    cursor: pointer;
    width: 90px;
    text-align: center;
}

@media screen and (max-width:800px) {
    .upload-head2 {
        padding: 5px 10px;
        width: 90px;
        text-align: center;
        

    }
    
}

.upload-head2:hover {
    background-color: hsl(259, 76%, 45%);
}






.hello {
color: yellow;
font-weight: bolder;
font-size: larger;

}

@media screen and (max-width:600px) {
    .hello {
        
        font-size:x-small;
        font-weight: bolder;
    
    
}
}


.hello2 {
    color: yellow;
    font-weight: bolder;
    font-size: larger;
    
}

@media screen and (max-width:600px) {
    .hello2{
        font-size:x-small;
        font-weight: bolder;
    }
    
}
</style>


<script>
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	
</script>



</body>
</html>