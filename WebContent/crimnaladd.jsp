<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADDCRIMINAL</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css"> 
    <link rel="stylesheet" href="file.jsp">
</head>
<body>
<div class="navbar">
        <a href="findcrimnal.jsp" class="home-link"><i class="fa fa-home">HOME</i></a>
    </div>
    <div class="container">
        <header>
            <h1 style="color: yellow; margin-top:20px;"><b>CRIME INFORMATION DETAILS</b></h1>
        </header>
        <img src="images.png" alt="Image">
        <form action="<%= request.getContextPath()%>/register" enctype="multipart/form-data" method="post" id="yourFormId" > 
            <label for="firstname" style="color: yellow;" >CRIMINAL FIRST NAME:</label>
            <input type="text" id="firstname" name="firstname" required>
            <label for="lastname" style="color: yellow;">CRIMINAL LAST NAME:</label>
            <input type="text" id="lastname" name="lastname"   >
            
            <label for="fathername" style="color: yellow;">CRIMINAL FATHER NAME:</label>
            <input type="text" id="fathername" name="fathername"   >
            
            <label for="mothername" style="color: yellow;">CRIMINAL MOTHER NAME:</label>
            <input type="text" id="mothername" name="mothername"   >
            
            <label for="phone" style="color: yellow;">PHONE NUMBER:</label>
            <input type="text" id="phone" name="phone" maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits" required  >
            
            <label  for="age" style="color: yellow;" >CRIMINAL DOB</label> 
            <input class="age" type="date" id="age" name="age" required >
            
            
            <label for="religion" style="color: yellow;">RELIGION</label>
            <select id="gender" name="religion">
 						 <option value="muslim">MUSLIM</option>
  						<option value="hindu">HINDU</option>
						 <option value="others">OTHERS</option>
			</select>
              
            <label for="gender" style="color: yellow;">GENDER</label>
            <select id="gender" name="gender">
 						 <option value="male">MALE</option>
  						<option value="female">FEMALE</option>
						 <option value="others">OTHERS</option>
			</select>
			
			<label  for="fir_date"  style="color: yellow;" >FIR DATE</label> 
            <input class="date" type="date" id="fir_date" name="fir_date"  >
			
			
			<label for="cases" id="label" style="color: yellow;" >CASE</label>
					<select id="cases" name="cases" required id="caseDropdown">
  					<option style="color: green;" value="active">ACTIVE</option>
 					 <option style="color: red; display:none;" value="close">CLOSE</option>
  					<option style="color: blue;" value="pending">PENDING</option>
				</select>

			<label for="reasion" style="color: yellow;" id="crimeRegionLabel">CRIME REGION</label>
			<textarea  name="region" 10000words id="crimeRegion"></textarea>
            
            <label for="address" style="color: yellow;">ADDRESS</label>
            <textarea id="address" name="address"1000word ></textarea>

            <label for="profilepic1" class="hello" style="color: yellow;">CRIMINAL FULL PICTURE</label>
            <div class="container2">
            <input type="file" id="file" name="picture" accept="image/*" hidden>
            <div class="img-area" data-img="" style="background-color: aliceblue;">
                <i class='bx bxs-cloud-upload icon'></i>
                <h3 class="select">CLICK HERE</h3>
                <p>Image size must be less than <span>2MB</span></p>
            </div>
        </div>
        <br>
            <button type="submit" >ADD INFORMATION</button>
        </form>
    </div>

    <script>
        const selectImage = document.querySelector('.select');
        const inputFile = document.querySelector('#file');
        const imgArea = document.querySelector('.img-area');

        selectImage.addEventListener('click', function () {
	      inputFile.click();
        })

        inputFile.addEventListener('change', function () {
	    const image = this.files[0]
	   if(image.size < 2000000) {
		    const reader=new FileReader();
		    reader.onload=()=> {
			const allImg = imgArea.querySelectorAll('img');
			allImg.forEach(item=> item.remove());
			const imgUrl = reader.result;
			const img = document.createElement('img');
			img.src = imgUrl;
			imgArea.appendChild(img);
			imgArea.classList.add('active');
			//imgArea.dataset.img = image.name;
		}
		reader.readAsDataURL(image);
	    } else {
		alert("Image size more than 2MB");
	    }
        })
    </script>

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
  /* Add this CSS to hide the label and textarea by default */
  #crimeRegionLabel,
  #crimeRegion {
    display: none;
  }
</style>
    
    <script>
  const caseDropdown = document.getElementById('cases');
  const crimeRegionLabel = document.getElementById('crimeRegionLabel');
  const crimeRegion = document.getElementById('crimeRegion');

  // Function to toggle visibility
  function toggleCrimeRegion() {
    if (caseDropdown.value === "pending") {
      crimeRegionLabel.style.display = 'none';
      crimeRegion.style.display = 'none';
    } else {
      crimeRegionLabel.style.display = 'block';
      crimeRegion.style.display = 'block';
    }
  }

  // Initial call to set the initial state based on the dropdown's initial value
  toggleCrimeRegion();

  // Add an event listener to listen for changes in the dropdown
  caseDropdown.addEventListener('change', toggleCrimeRegion);
</script>

    
</body>

</html>