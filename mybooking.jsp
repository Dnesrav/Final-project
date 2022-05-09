<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
 background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYabJCdT48u9C46nNeO316nMTwOVL1utuLEg&usqp=CAU);
 
 background-repeat: no-repeat;
background-size: 1300px 800px;
}

#main{
background-color:white;
margin-top:30px;
margin-left:120px;
margin-right:120px;
padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 30px;
}
H4{
TEXT-ALIGN:CENTER;
color:red;}
input{
    
    border:none;
}
#but{
margin-left:350px;
}
</style>
<script>
deleted(){
	if(confirm("Sure to cancel the ticket")==true)
		document.getElementById("toDO").action = "Delete";
	else
		document.getElementById("toDO").action = "viewbook";
}
</script>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>My Bookings</title>

</head>
<body>

<div id="main">
	<h4><b>YOUR BOOKINGS</b></h4>
   	
   	 <table class="table">
		
  <tr>
    <th scope="col">Source</th>
    <th scope="col">Destination</th>
    <th scope="col">Date</th>
    <th scope="col">Bus Name</th>
    <th scope="col">Start time</th>
    <th scope="col">End time</th>
    <th scope="col">ac type</th>
    <th scope="col">sleep type</th>
    <th scope="col">rate</th>
    <th scope="col">Seats</th>
    
  </tr>
   	<c:forEach var="list" items="${bookList}">
   	 <tr>
   	  <form id="toDo" >
	   	 <td><input style="border:none" value="${list.fromDest}" name="fromDest" size="5" readonly/></td>
	   	 <td><input style="border:none" value="${list.toDest}" name="toDest" size="5" readonly/></td>
	   	 <td><input style="border:none" value="${list.bDate}" name="bDate" size="8" readonly/></td>
	   	 <td><input style="border:none" value="${list.busName}" name="busName" size="10" readonly/></td>
	   	 <td><input style="border:none" value="${list.startTime}" name="startTime" size="5" readonly/></td>
	   	 <td><input style="border:none" value="${list.endTime}" name="endTime" size="5" readonly/></td>
	   	 <td><input style="border:none" value="${list.ac_type}" name="ac_type" size="3" readonly/></td>
	   	 <td><input style="border:none" value="${list.sleep_type}" name="sleep_type" size="8" readonly/></td>
	   	 <td><input style="border:none" value="${list.rate}" name="rate" size="2" readonly/></td>
	   	 <td><input style="border:none" value="${list.seatCap}" name="seater" size="1" readonly/></td>
		 <td> <input type="Submit" value="Cancel" onclick="deleted()" class="btn btn-secondary btn-sm"/></td>
			</form>
	
	</tr>	
  		 
		</c:forEach>
		
 
 
</table>

<form action="last" id="but">
<input type="hidden" name="Number" value="${Number}" />
<input type="hidden" name="Password" value="${Password}" />
<input type="submit" value="Book again"/ class="btn btn-success btn-sm">
<a  href="/BlueBus.com" class="btn btn-primary btn-sm" role ="button">Logout</a></form>
</div>
</body>
</html>