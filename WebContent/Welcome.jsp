<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="MonitorController" method="get">

	<%
	int user = (Integer)session.getAttribute("role_id");
	if(user==1) {
	%>
								
							<input type="submit" name="operating_units" id="operating_units" class="btn btn-block btn-primary btn-lg" 
							value="submit" />
							
						
						
					
						<%
	}
						%>
						
	<%

	if(user==2) {
	%>
						
							<input type="submit" name="operating_units" id="operating_units" class="btn btn-block btn-primary btn-lg" 
							value="submit" />
							
						
						
						</form>
						<%
	}
						%>					
</body>
</html>