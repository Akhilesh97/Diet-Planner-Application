<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.pro{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=90);
    opacity:1.0;
}
.pro1{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=90);
    opacity:1.0;
}
.carb{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=90);
    opacity:1.0;
}
.carb1{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=90);
    opacity:1.0;
}

form {
    border: 3px solid #f1f1f1;
    filter:alpha(opacity=70);
    opacity:0.7;
    
}
.container{
	padding:16px;
}
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
</style>
</head>
<body>
<%String name1=request.getParameter("uname");
	String bmi=request.getParameter("bmi");
	int bmi_1=Integer.parseInt(bmi);
%>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ page import = "javax.servlet.*" %>
<%@ page import = "java.sql.*" %>
<%	String url = "jdbc:mysql://localhost:3306/"; 
	String dbName = "fitrecord"; 
	String driver = "com.mysql.jdbc.Driver"; 
	String user = "root";  
	String password = ""; 
	Statement pstmt;
	String name=request.getParameter("uname");
	HttpSession sess=request.getSession();
		sess.setAttribute("name",name);
		System.out.println(sess);
		try { 
        Class.forName(driver).newInstance(); 
        Connection conn = DriverManager.getConnection(url+dbName, user, password); 
        PreparedStatement ps=conn.prepareStatement("insert into dietdetails values (?,?,?)");
        String sql = "SELECT * FROM dietdetails"; 
        pstmt = conn.createStatement(); 
        String user1=request.getParameter("Name");
        String bmi1=request.getParameter("BMI");
        String body=request.getParameter("BodyCondition");
        ps.setString(1, name1);
        ps.setInt(2, bmi_1);
        if(bmi_1<16){ps.setString(3, "SevereThin");}
        else if(bmi_1>16 && bmi_1<17){ps.setString(3, "ModThin");}
        else if(bmi_1>17 && bmi_1<18){ps.setString(3, "MildThin");}
        else if(bmi_1>18 && bmi_1<25){ps.setString(3, "Normal");}
        else if(bmi_1>25 && bmi_1<30){ps.setString(3, "Overweight");}
        else{ps.setString(3, "Obese");}
    	ps.executeUpdate();
        ResultSet rs=ps.executeQuery(sql);
		}
	  	catch (Exception e) { 
    	System.out.println("ERROR"+e);
	  	}
	

%>


<button name="Proteins">Proteins</button><br>
<form action="page4.jsp">
<%if(bmi_1<19){ %><div class="pro">
<input type="checkbox" name="id" value="Milk"  >ADD MILK 2 GLASSES PER DAY TO YOUR PLAN<br> 
  <input type="checkbox" name="id" value="Beans" > WHOLE WHEAT PASTA FOR 120 CALS<br>
  <input type="checkbox" name="id" value="Eggs"> SLICED AVOCADO FOR 81 CALS<br>
  <input type="checkbox" name="id" value="Soya" > CUP FULL OAT MEAL FOR 150 CALS<br>
  </div>
  <div class="carb">
<button name="Carbohydrates">Carbohydrates</button><br>
<input type="checkbox" name="id1" value="Rice"> HALF CUP ROASTED NUTS FOR 440 CALS<br>
  <input type="checkbox" name="id1" value="Sweet" >HALF CUP RAISINS FOR 215 CALS<br>
  <input type="checkbox" name="id1" value="Leg">HALF CUP GRANOLA CEREALS FOR 210 CALS<br>
  <input type="checkbox" name="id1" value="Potatoes" >A BOWL RICE<br>
  <button type="submit">Calculate my intake</button></div>
<%}else {%>
<div class="pro1">
<input type="checkbox" name="id" value="Milk"  >ADD MILK 2 GLASSES PER DAY TO YOUR PLAN<br> 
  <input type="checkbox" name="id" value="Beans" > 3 EGG WHITES <br>
  <input type="checkbox" name="id" value="Eggs"> WHOLE GRAIN TOASTS FOR 81 CALS<br>
  <input type="checkbox" name="id" value="Soya" > GRILLED CHICKEN WITH SALAD FOR 150 CALS<br>
  </div>
  <div class="carb1">
<button name="Carbohydrates">Carbohydrates</button><br>
<input type="checkbox" name="id1" value="Rice"> SUGAR FREE YOGHURT<br>
  <input type="checkbox" name="id1" value="Sweet" >8 OUNCES OF SALMON<br>
  <input type="checkbox" name="id1" value="Leg">SUGAR FREE ICED TEA<br>
  <input type="checkbox" name="id1" value="Potatoes" >A BOWL RICE<br>
  <button type="submit">Calculate my intake</button>
  </div>

<%} %>
<div class="container">
<h3>Re-enter your BMI </h3>
  <input type="text" placeholder="Enter BMI again" name="bmi" required>
<button type="submit">Plan diet</button>
</div>
</form>
<h3>Select the following check-boxes to add to your plan</h3>


</body>
</html>