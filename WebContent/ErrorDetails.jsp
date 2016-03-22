<%@page import="com.monitor.model.ErrorDetails"%>
<%@page import="java.util.Date"%>
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
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/tableExport.js"></script>
  <script type="text/javascript" src="js/jquery.base64.js"></script>
  <script type="text/javascript" src="js/html2canvas.js"></script>

<style>
h2 { 
    display: block;
    font-size: 1.1em;
    margin-top: 0.67em;
    margin-bottom: 0.67em;
    margin-left: 0;
    margin-right: 0;
    
  
}

table {
    width: 100%;
   
}

th {
    height: 50%;
    color:red;
}
td{
	height: 100%;
}

 tbody {
  
 height: 100px !important;
  overflow-y: scroll;
  
  
  
}

thead { }

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


		
		<br> <br> <br> <br> <br> <br> <br>

		<div class="container">
		
		
		  <table class="table table-bordered" id="tableID">
   		 
      		
		   <thead>    
		      <tr> 
		        <th>PO Number</th>
		        <th>Order Date</th>
		        <th>Error Message</th>
		        <th>Order Number</th>
		        <th>Line Number</th>
      		</tr>
  				
		</thead>	
	

		<%  
  
   		List<Monitor> errors = (ArrayList<Monitor>)session.getAttribute("errordetails");  
			
 		for(int i =0; i<errors.size(); i++) {
 			
 			Monitor lst = errors.get(i);
 			List<ErrorDetails> errorList = lst.getErrors();
 			
 			for(ErrorDetails error: errorList) {
 				
  				%>  
<!-- 					<div class="row"> -->
<!-- 					 <div class="col-md-2"> -->
						
						<tbody>
     					 <tr>
     					 	<td><%=error.getPO_num() %></td>
     					 	
     					 		<%
     					 		if(error.getOrder_date()==null) {
     					 			%>
     					 			
     					 		<td></td>	
     					 			<% 
     					 		}
     					 		else {
     					 	
     					 	%>
     					 	<td><%=error.getOrder_date() %></td>
     					 	
     					 	<%
     					 		}
     					 	%>
     					 	
     					 	<%
     					 		if(error.getError_msg()==null) {
     					 			%>
     					 			
     					 		<td></td>	
     					 			<% 
     					 		}
     					 		else {
     					 	
     					 	%>
     					 	
     					 	
     					 	<td><%=error.getError_msg() %></td>
     					 	
     					 	<%
     					 		}
     					 	%>
     					 	
     					 		<%
     					 		if(error.getOrder_num()==null) {
     					 			%>
     					 			
     					 		<td></td>	
     					 			<% 
     					 		}
     					 		else {
     					 	
     					 	%>
     					 	<td><%=error.getOrder_num() %></td>
     					 	<%
     					 		}
     					 	%>
     					 	<td><%=error.getLine_num()%></td>
     					 </tr>
     					 
					</tbody>
      				
								
								<%
			} 
 			}
 		
  %>		
  			
  			</table>
  			
  			<div>	
  				<button type="button" id="button" class="btn btn-warning">Export To Excel</button>
					<script>

					$(document).ready(function () {
					        $('#button').click(function () {
					           $('#tableID').tableExport({type:'excel',escape:'false'})
					        });
					    });
					
			
					</script>

					
				</div>	
				</div>
					



</body>
</html>