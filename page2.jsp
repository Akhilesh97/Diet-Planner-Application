<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style >
body{
	background-image:url("http://www.weightlossresources.co.uk/img/d/diet-plan-weight-loss.jpg")
}
form {
    border: 3px solid #f1f1f1;
    filter:alpha(opacity=100);
    opacity:1.0;
    
    
}
.container{
	padding:16px;
	filter:alpha(opacity=100);
    opacity:1.0;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    filter:alpha(opacity=100);
    opacity:1.0;
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.8;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ page import = "javax.servlet.*" %>
<%@ page import = "java.sql.*" %>
<%	String url = "jdbc:mysql://localhost:3306/"; 
	String dbName = "fitrecord"; 
	String driver = "com.mysql.jdbc.Driver"; 
	String user = "root";  
	String password = ""; 
	Statement pstmt;
	//request.getRequestDispatcher("index.jsp").include(request,response); 
 	String name=request.getParameter("uname");
 	String pass=request.getParameter("psw");
 	String weight=request.getParameter("weight");
 	String height=request.getParameter("height");
 	String age=request.getParameter("age");
 	String gender=request.getParameter("gender");
 	//String bmi=request.getParameter("bmi1");
 		//out.print("Welcome"+name);
 		HttpSession sess=request.getSession();
 		sess.setAttribute("name",name);
 		System.out.println(sess);
 		try { 
	        Class.forName(driver).newInstance(); 
	        Connection conn = DriverManager.getConnection(url+dbName, user, password); 
	        PreparedStatement ps=conn.prepareStatement("insert into userdetails values (?,?,?,?,?)");
	        String sql = "SELECT * FROM userdetails"; 
	        pstmt = conn.createStatement(); 
	        String usr_name=request.getParameter("Name");
	     
	        String heght=request.getParameter("Height");
	        String weght=request.getParameter("Weight");
	        String agie=request.getParameter("Age");
	        String ge=request.getParameter("Gender");
	        
	        ps.setString(1, name);
	        
	        ps.setString(2,height);
	        ps.setString(3,weight);
	        ps.setString(4,age);
	        ps.setString(5,gender);
	        
	       	ps.executeUpdate();
	        ResultSet rs=ps.executeQuery(sql);
 		}
 	  	catch (Exception e) { 
	    	System.out.println("ERROR"+e);
 	  	}
 	
	        
 		
 		%>
<h3><%out.println("Hello "+name); %></h3>
<h3><%out.println("Your weight is "+weight); %></h3>
<h3><%out.println("Your height is "+height); %></h3>
<h3><%out.println("Your age is "+age); %></h3>
<%int w=Integer.parseInt(weight);
	int h=Integer.parseInt(height);
	int a=Integer.parseInt(age);
	double bmi=(double)w/(double)(h*h);
	double bmi_1=bmi*10000; %>
	<h3><%out.println("Your BMI is "+bmi_1); %></h3>
<%if(bmi_1<16){ %><h3>You are suffering from Severe Thinness, chose a healthy diet</h3>
<%}else if(bmi_1>16 && bmi_1<17) {%><h3>You are Mildly Thin, chose an appropriate diet</h3>
<%}else if(bmi_1>17 && bmi_1<18.5){ %><h3>You are moderately thin</h3>
<%}else if(bmi_1>18.5 && bmi_1<25){ %><h3>You are normal, stick on to your healthy diet</h3>
<%}else if(bmi_1>25 && bmi_1<30){ %><h3>You are overweight, try to cut down on calories</h3>
<%}else{ %><h3>You have obesety, please plan your diet accordingly</h3>
<%} %>
<form action="page3.jsp">
<h3>Enter name and BMI again to move on to your diet plan</h3>
<div class="container">
<input type="text" placeholder="Enter Name Again" name="uname" required >
<input type="text" placeholder="Enter BMI again" name="bmi" required>
<button type="submit">Plan diet</button>
</div>
</form>
<%request.getRequestDispatcher("page3.jsp"); %>
</body>
</html>