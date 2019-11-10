<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = 'icon' href = 'img/1.png'/>
<title>OLE</title>
</head>
<body>
<jsp:include page="my-header.jsp"></jsp:include>

<div class = 'container'>
	<div class = 'row'>
		<div class = 'col-lg-12'>
		<img src = "img/1.png" style = "padding-left: 430px;padding-top: 100px"></img><br/><br/>
		<marquee><h2 style = "padding-left:180px;">WELCOME TO ONLINE EXAMINATION PORTAL</h2></marquee>
		</div>
	
	</div>
	<br><br>
	<div class = 'row' style = 'padding-left: 20px;'>
		<div class = 'col-lg-4'>
		<img src = 'img/db.jpg' style = "border-radius = 50%"/><br><br>
		<h4 style = 'padding-left:50px'>DATABASE</h4>
		
		<a href='database.jsp' style='padding-left:56px'><button class = 'btn btn-success' ><h5>Start Test</h5></button></a>
		
		</div>
		<div class = 'col-lg-4'>
		<img src = 'img/sp.jpg' style = "border-radius = 50%"/><br><br>
		<h4 style = 'padding-left:10px; padding-top:8px;'>System Programming</h4>
		
		<a href='sp.jsp' style='padding-left:56px'><button class = 'btn btn-success' ><h5>Start Test</h5></button></a>
		
		</div>
		<div class = 'col-lg-4'>
		<img src = 'img/coa2.png' style = "border-radius = 50%"/><br><br>
		<h4 style = 'padding-left:85px'>COA</h4>
		
		<a href='coa.jsp' style='padding-left:56px'><button class = 'btn btn-success' ><h5>Start Test</h5></button></a>
		
		</div>
	</div>
	<br><br><br><br>
	<div class = 'row' style = 'padding-left:100px;'>
		<div class = 'col-lg-6' style = 'padding-left:70px'>
		<img src = 'img/daa2.png' style = "border-radius = 50%"/><br><br>
		<h4 style = 'padding-left:85px; padding-top:8px;'>DAA</h4>
		
		<a href='daa.jsp' style='padding-left:56px'><button class = 'btn btn-success' ><h5>Start Test</h5></button></a>
		
		</div>
		<div class = 'col-lg-6'>
		<img src = 'img/java2.png' style = "border-radius = 50%"/><br><br>
		<h4 style = 'padding-left:85px; padding-top:8px;'>JAVA</h4>
		
		<a href='java.jsp' style='padding-left:56px'><button class = 'btn btn-success' ><h5>Start Test</h5></button></a>
		</div>
		
	</div>
	
	<br><br><br><br><br>
</div>


</body>
</html>