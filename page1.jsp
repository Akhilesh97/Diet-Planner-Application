<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
        background-image: url("https://d28dwf34zswvrl.cloudfront.net/wp-content/uploads/2016/04/06-040026-how_to_track_your_fitness_progress-1.jpg ");
}
form {
    border: 3px solid #f1f1f1;
    filter:alpha(opacity=70);
    opacity:0.7;
}
a.button {
    -webkit-appearance: button;
    -moz-appearance: button;
    appearance: button;

    text-decoration: none;
    color: initial;
}

/* Full-width inputs */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    filter:alpha(opacity=70);
    opacity:0.7;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    filter:alpha(opacity=70);
    opacity:0.7;
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=70);
    opacity:0.7;
}

/* Center the avatar image inside this container */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    
}

/* Avatar image */
img.avatar {
    width: 40%;
    border-radius: 50%;
}

/* Add padding to containers */
.container {
    padding: 16px;
}

/* The "Forgot password" text */
span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="page2.jsp">
	
	<div class="imgcontainer">
    <h3>Login to your Fitness Account and get Fit</h3>
  </div>
  <div class="container">
    <label><b>User-name</b></label>
    <input type="text" placeholder="Enter Name" name="uname" required >

    <label><b>Enter your Height</b></label>
    <input type="text"  placeholder="Enter height" name="height" required >

    <label><b>Enter your weight</b></label>
    <input type="text"  placeholder="Enter Weight" name="weight" required >
    
    <label><b>Enter your age</b></label>
    <input type="text"  placeholder="Enter Age" name="age" required >
    
     <label><b>Enter your gender</b></label>
    <input type="text"  placeholder="Enter gender" name="gender" required >
    <button type="submit">Login</button>
    
  </div>

  
  </div>
</form>

</body>
</html>