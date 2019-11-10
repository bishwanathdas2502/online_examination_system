<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
</head>
<body>
	<jsp:include page="my-header.jsp"></jsp:include>
	<%String table = request.getParameter("table_name"); %>
	<% String qa[] = new String [5];%>
	<% qa[0] = request.getParameter("q1"); %>
	<% qa[1] = request.getParameter("q2"); %>
	<% qa[2] = request.getParameter("q3"); %>
	<% qa[3] = request.getParameter("q4"); %>
	<% qa[4] = request.getParameter("q5"); %>
	
	
	
	
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
	String sql ="SELECT correct FROM "+table;
	
	resultSet = statement.executeQuery(sql);
	int i = 0;
	int count = 0;
	while(resultSet.next()){	
		if(qa[i].equals(resultSet.getString("correct")))
		{
			count = count + 1;
			
		}
		i = i+1;
	}%>
	
	<h3 style = 'text-align:center;'>Your Score in <% out.println(table); %> test:</h3>
	<h2 style = 'text-align:center'> <br/><% out.println(count);%> out of 5</h2><br>
	<h4 style = 'text-align:center;'>Your Marks Has been <b>Recorded</b></h4>
	<%
	 String count1 = Integer.toString(count);
	 int k= statement.executeUpdate("insert into stat(Test,Marks)values('"+table+"','"+count1+"')");
	
	%>
	
	<%
	} 
	catch (Exception e) {
	e.printStackTrace();
	}
	%>
	<a href = 'homepage.jsp'><button type="button" style="margin-left:auto;margin-right:auto;display:block;margin-top:80px;padding:10px 10px 10px 10px;" class = "btn btn-success"'>
   <h4>Return</h4>
</button></a>
	
</body>
</html>