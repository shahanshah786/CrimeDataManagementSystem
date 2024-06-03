<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD CRIMINAL</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css">  
</head>
<body>
 <div class="navbar">
            <form action="adminusername" method=POST>
               <img src="admin.png" alt="Avatar" class="avatar"> <span>ADMIN</span>
            </form>
            <div class="dropdown">
                <a href="admin.jsp">LOG OUT</a>                  
                </div>
         </div>     

       
    <div class="container">
           <div class="hexagonArea first">
           
               <div class="hexagon">
                 <a href="crimnaladd.jsp"><img src="FIR.png" height="140px" width="170px"></a>
                 <h3 class="h3">POLICE FIR</h3>
                </div>
                
                <div class="hexagon">
                    <form action="newcasebyuser"  method="post">  
                     <button ><img src="NEW CASE.jpg" height="140px" width="170px"></button>        
                    </form> 
                    <h3 class="h3">USER FIR</h3> 
                </div>
                
                  
               <div class="hexagon"> 
                  <a href="update.jsp"><img src="update.jpg" height="140px" width="170px"></a>
                  <h3 class="h3">UPDATE DATA</h3>
                 </div>
      
           </div>
       
           <div class="hexagonArea last">
           
           
              <div class="hexagon">
                 <a href="crimnalsearch.jsp"><img src="search_criminal.png" height="140px" width="170px"></a>
                 <h3 class="h3">SEARCH CRIMINAL</h3>
                </div>
                  
               <div class="hexagon">
                      <form action="AllDataRecord"  method="post">
                         <button ><img src="ReportStatus.jpg" height="140px" width="170px"></button>             
                       </form>
                       <h3 class="h3">CRIMINAL RECORDS</h3>
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
margin-top:40px;
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

.container .hexagonArea.last {
   transform:translateY(-45px);
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
   border:none;
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
 font-size:12px;
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

 }
 .navbar form {
 float: left;
font-size: 16px;
color: black;
text-align: center;
padding: 14px 16px;

 }

.navbar a {
float: left;
font-size: 16px;
color: black;
text-align: center;
padding: 14px 16px;
text-decoration: none;
}

.home-link {
    float: left;
    margin-left: 50px;
   
}
.dropdown  {
  overflow: hidden;
   float: right;
   margin-right: 80px;
   
 
}

.dropdown .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    color: black;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {

    background-color: rgb(59, 19, 180);
}


.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 180px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
.dropdown-content a:hover {
    background-color: #ddd;
    
}

.dropdown:hover .dropdown-content {
    display: block;
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