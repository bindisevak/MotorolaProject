<%@page import="com.monitor.model.Monitor"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>

<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %> --%>
<%-- <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %> --%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style>
.center {
	margin: 7%;
	width: 90%;
}

#myModal .modal-body p {
	margin-bottom: 500px
}

div.scroll {
    overflow: auto;
}

</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<div class="navbar-brand">Motorola.com</div>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	
	<div class="container-fluid">
		<br>
		<br>
		<br>
		<br>
		<div class="text-center">
			<h1>Error Types</h1>
		</div>
		<br> <br> <br> <br> <br> <br> <br>

		
	
		<div class="scroll">
 		<%  
  
   		ArrayList<Monitor> errors = (ArrayList<Monitor>)session.getAttribute("error");  
			
 			Iterator<Monitor> itr1 = errors.iterator();
			while(itr1.hasNext())
			
 			//for(Monitor itrObj:lst)
			{ 
				
  				%>  
				<%Monitor s = (Monitor)itr1.next(); %>	
				
						<div class="col-xs-12 col-sm-4">
						<center>
					
						<form action="ErrorDetailsControlling" method="get">
							<input type="hidden" name="operating_id" id="operating_id" value="<%out.println(s.getOperating_id());%>" />
							<input type="hidden" name="batch_num" id="batch_num" value="<%out.println(s.getBatch_num());%>" />
					
					<div class="row">
					<div class="col-md-9">
							<br>
							<br>
							<br>		
					<input type="submit" class="btn btn-danger btn-md" name="errortype" id="errortype" value="<%out.println(s.getErrortype());%>" />
						</div>	
						</div>	

						</form>
					
					</center>
				</div>
				
					<% 
 					}

  				%> 	
			</div>	
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>	
					
					<div>	
						<form action="">
							<a href="#" class="btn btn-block btn-lg btn-info">Statistics</a>
						</form>
					</div>	
				
		
				
		
 
		
	
	
	</div>
	
	
	
	</body>
	</html>