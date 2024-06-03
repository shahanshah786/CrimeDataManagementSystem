<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserPage</title>
</head>
<body>
<div class="navbar">
           
 			 <span onclick="myFunction()" class="dropbtn"> <img src="user.png" alt="Avatar" class="avatar"></span>
  							
  					<a href="user.jsp">LOG OUT</a>			
			
  </div>     


          
    <div class="container">
     <div class="hexagonArea first">
     <div class="hexagon">
         <a href="newcaseuser.jsp"><img src="NEW CASE.jpg" height="150px" width="170px"></a>
             <h3 class="h3">FIR</h3>
                </div>
         
          <div class="hexagon">
         <a href="ReportSatus.jsp"><img src="STATUS.jpg" height="150px" width="170px"></a>
            <h3 class="h3">REPORT STATUS</h3>
           </div>

     <div class="hexagon">
      <form action="countrycase"  method="post">
                <button ><img onclick="promptForPassword()" src="ReportStatus.jpg" height="150px" width="170px"></button>      
         </form>   
          <h3 class="h3">REPORTS DATA</h3> 
      </div>
      
       </div>
     </div>


    <style>

        
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');


*{
     margin:0;
     padding:0;
     font-familly:'Poppins', snas-serif;
}
.container {
margin-top:150px;
margin-left:150px;
width:950px;
display:flex;
justify-content:center;
align-items:center;
flex-direction:column;
flex-wrap:wrap;
}
.container .hexagonArea {
display:flex;
}

.container .hexagonArea .hexagon {
  position:relative;
  width:200px;
  height:250px;
  margin:0 10px;
  clip-path:polygon(0 25%, 50% 0, 100% 25%, 100% 76%, 50% 100%, 0 75%);
  background:deeppink;
  display:flex;
  align-items:center;
  flex-direction:column;
  cursor:pointer;
  transition: .5s;
}

.hexagon  img{
  filter: grayscale(100%);
   margin-top:40px;
   border-radius:50%;
}


.hexagon button {
   Border:none;
   background:none;
   margin-left:10px;
}

.h3 {
 text-transform: uppercase;
 font-weight:Bold;
 margin-top:2px;
 font-size:14px;
 letter-spacing:1px;
 color:Yellow;
}

.container .hexagonArea .hexagon:hover{
  background:deepskyblue;
  transform:scale(0.8);
}

body {
   
    background-image:url(Baground.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    font-family: Arial, Helvetica, sans-serif;
    
 }


 .navbar {
   background-image:linear-gradient(to right, #00bfff, #00ffd5);
    overflow: hidden;
    margin-top: 0;
    padding: 14px 16px;

 }

.navbar a{
float: right;
font-size: 15px;
color: black;
text-align: center;
text-decoration: none;
}

.avatar {
  vertical-align: middle;
  width: 20px;
  height: 20px;
  border-radius: 50%;
}

</style>


</body>
</html>