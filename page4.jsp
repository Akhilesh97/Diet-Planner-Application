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
    filter:alpha(opacity=70);
    opacity:0.7;
}
.pro1{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=70);
    opacity:0.7;
}
.carb{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=70);
    opacity:0.7;
}
.carb1{
     width: auto;
    padding: 10px 18px;
    background-color: #f44336;
    filter:alpha(opacity=70);
    opacity:0.7;
}
body {
        background-image: url("http://www.weightlossresources.co.uk/img/d/diet-plan-weight-loss.jpg");
		filter:alpha(opacity=200);
    opacity:2.0;
}
form {
    border: 3px solid #f1f1f1;
    filter:alpha(opacity=100);
    opacity:1.0;
    
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
<% String bmi=request.getParameter("bmi");
	int bmi_1=Integer.parseInt(bmi);
%>
<%if(bmi_1<19){ %>
<h3>You have selected the following proteins</h3>
<h3><%		
	int milk=0,beans=0,eggs=0,soya=0;
	try{
	String select[] = request.getParameterValues("id"); 
	if (select != null && select.length != 0) {
	//out.println("You have selected the following proteins: ");
	
	for(int i=0;i<select.length;i++){
		if(i==0){
			milk=milk+2;
			
		}
		else if(i==1){
			beans=beans+120;
		}
		else if(i==2){
			eggs=eggs+81;
		}
		else if(i==3){
			soya=soya+150;
		}
	
		}
	}
	//out.println("Calories intake in protiens"+"\n");
	//out.println("Milk ="+milk+"\n");
	//out.println("Beans ="+beans+"\n");
	//out.println("Eggs ="+eggs+"\n");
	//out.println("Soya ="+soya+"\n");
	
}
catch(Exception e){
	out.println("Enter a full meal");

	
	
}
 %></h3>
 <h4>Calories intake in protiens</h4>
 <h4><%out.println("ADDED MILK 2 GLASSES ="+milk+"\n"); %></h4>
 <h4><%out.println("WHOLE WHEAT PASTA ="+beans+"\n"); %></h4>
 <h4><%out.println("SLICED AVOCADO ="+eggs+"\n"); %></h4>
 <h4><%out.println("CUP FULL OAT MEAL ="+soya+"\n"); %></h4>
  
 <h4>You have selected the following carbs</h4>

<h4><%		
	int rice=0,snacks=0,cake=0,fries=0;
	try{
	
	String select1[] = request.getParameterValues("id1"); 
	if (select1 != null && select1.length != 0) {
	//out.println("You have selected th following carbs: ");
	for (int i = 0; i < select1.length; i++) {
	out.println(select1[i]+"\n");
	if(i==0){
		rice=rice+440;
	}
	else if(i==1){
		snacks=snacks+215;
	}
	else if(i==2){
		cake=cake+300;
	}
	else if(i==3){
		fries=fries+222;
	}
		}
	}
	//out.println("The amount of calorie intake in form of carbs"+"\n");
	//out.println("Rice ="+rice+"\n");
	//out.println("Snacks ="+snacks+"\n");
	//out.println("Cake ="+cake);
	//out.println("Fries ="+fries);
}
catch(Exception e){
	out.println("Enter a full meal");
	
}
 %></h4>
 <h4>Calorie intake in carbs</h4>
 <h4><%out.println("HALF CUP ROASTED NUTS ="+rice+"\n");%></h4>
<h4><%out.println("HALF CUP RAISINS ="+snacks+"\n");%></h4>
<h4><%out.println("HALF CUP GRANOLA CEREALS ="+cake);%></h4>
<h4><%out.println("A BOWL RICE ="+fries);%></h4>
<%}else{ %>
<h4>You have selected the following proteins</h4>
<h4><%		
	int milk=0,beans=0,eggs=0,soya=0;
	try{
	String select[] = request.getParameterValues("id"); 
	if (select != null && select.length != 0) {
	
	for(int i=0;i<select.length;i++){
		if(i==0){
			milk=milk+2;
			
		}
		else if(i==1){
			beans=beans+120;
		}
		else if(i==2){
			eggs=eggs+81;
		}
		else if(i==3){
			soya=soya+150;
		}
	
		}
	}
	//out.println("Calories intake in protiens"+"\n");
	//out.println("Milk ="+milk+"\n");
	//out.println("Beans ="+beans+"\n");
	//out.println("Eggs ="+eggs+"\n");
	//out.println("Soya ="+soya+"\n");
	
}
catch(Exception e){
	out.println("Enter a full meal");

	
	
}
 %></h4>

 <h4>Calories intake in protiens</h4>
 <h4><%out.println("ADDED MILK 2 GLASSES ="+milk+"\n"); %></h4>
 <h4><%out.println("3 EGG WHITES ="+beans+"\n"); %></h4>
 <h4><%out.println("WHOLE GRAIN TOASTS  ="+eggs+"\n"); %></h4>
 <h4><%out.println("GRILLED CHICKEN WITH SALAD ="+soya+"\n"); %></h4>
 <h3>You have selected the following carbs</h3>
<h3><%		
	int rice=0,snacks=0,cake=0,fries=0;
	try{
	
	String select1[] = request.getParameterValues("id1"); 
	if (select1 != null && select1.length != 0) {
	//out.println("You have selected th following carbs: ");
	for (int i = 0; i < select1.length; i++) {
	//out.println(select1[i]+"\n");
	if(i==0){
		rice=rice+120;
	}
	else if(i==1){
		snacks=snacks+81;
	}
	else if(i==2){
		cake=cake+121;
	}
	else if(i==3){
		fries=fries+122;
	}
		}
	}
	//out.println("The amount of calorie intake in form of carbs"+"\n");
	//out.println("Rice ="+rice+"\n");
	//out.println("Snacks ="+snacks+"\n");
	//out.println("Cake ="+cake);
	//out.println("Fries ="+fries);
}
catch(Exception e){
	out.println("Enter a full meal");
	
}
 %></h3>
 
 <h3>Calorie intake in carbs</h3>
 <h4><%out.println("SUGAR FREE YOGHURT ="+rice+"\n");%></h4>
<h4><%out.println("8 OUNCES OF SALMON ="+snacks+"\n");%></h4>
<h4><%out.println("SUGAR FREE ICED TEA ="+cake);%></h4>
<h4><%out.println("A BOWL RICE ="+fries);%></h4>
<%} %>
<form action="page1.jsp">
<button type="submit">Back to home</button>
</form>

</body>
</html>