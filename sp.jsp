<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = 'icon' href = 'img/sp.jpg'></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SP</title>
</head>
<body>
<jsp:include page="my-header.jsp"></jsp:include>
<div class = 'container'>
	<div class = 'row'>
		<div class = 'col-lg-12'>
		<img src = "img/sp.jpg" style = "padding-left: 442px;padding-top: 50px;"></img><br/><br/>
		<h3 style="padding-left:410px;">SYSTEM PROGRAMMING</h3><br/><br/>
		<jsp:include page="inst.jsp"></jsp:include>
		<br/><br/>
		</div>
		
	<div class = 'row'>
			<div class = 'col=lg-12'>
			<form action="validate.jsp" method = 'get'>
				<%@page import="java.sql.DriverManager"%>
				<%@page import="java.sql.ResultSet"%>
				<%@page import="java.sql.Statement"%>
				<%@page import="java.sql.Connection"%>
				
				<%
				String id = request.getParameter("userId");
				String driverName = "com.mysql.jdbc.Driver";
				String connectionUrl = "jdbc:mysql://localhost:3306/";
				String dbName = "examination";
				String userId = "root";
				String password = "";
				
				try {
				Class.forName(driverName);
				} catch (ClassNotFoundException e) {
				e.printStackTrace();
				}
				
				Connection connection = null;
				Statement statement = null;
				ResultSet resultSet = null;
				%>
				
				<%
				try{ 
				connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
				statement=connection.createStatement();
				String sql ="SELECT * FROM sp";
				
				resultSet = statement.executeQuery(sql);
				int i = 1;
				while(resultSet.next()){	
				%>
				
				<div style = 'padding-left:30px'>
					<h5>Q.<% out.println(i); %> <%=resultSet.getString("question") %></h5>
					<input type="radio" name= q<% out.println(i); %> value='a'><%=resultSet.getString("a") %><br>
					<input type="radio" name= q<% out.println(i); %> value='b' ><%=resultSet.getString("b") %><br>
					<input type="radio" name= q<% out.println(i); %> value='c'><%=resultSet.getString("c") %><br><br>
				</div>
				
				
				
				<% 
				i = i+1;
				}
				
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
				<input type = 'hidden' name = 'table_name' value = ' sp'></input><br/>
				<br/>
				<input type = 'submit' value = 'SUBMIT' class='btn btn-success' style='margin-left:30px' />
			</div>
		</form>
	</div>
	
	</div>
</div>
</body>
</html>