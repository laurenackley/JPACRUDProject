<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<%@ include file="bootstrapHeader.jsp" %>
<link rel="stylesheet" href="css/stylesheet.css"></link> 
</head>
<body id="body">
<h2>${recipe.name }</h2>


<c:choose>
				<c:when test="${empty recipe.ovenTemperature }">
<li> No oven needed for this recipe. </li>
				</c:when>
				<c:otherwise>
				Oven Temperature:
				<ul>
<li>${recipe.ovenTemperature}°F</li>
				</ul>
				</c:otherwise>
		</c:choose>
Instructions:
<ul>
<li> 
${recipe.instructions }
</li>
</ul>

Time it will take to complete:
<ul>
<li>
${recipe.timeToComplete } minutes
</li>
</ul>
<img src="${recipe.imageUrl }" alt="BakedGood" width="199" height="300">
 <br><br>
 Do you want to edit this recipe?
 <form action="edit.do" method="post">
 <input type="text" hidden="true" name="id" value="${recipe.id }"> 
<button type="submit" class="btn btn-outline-secondary" value="edit">Edit</button>
 
<!--  <input type="submit" value="Edit"> -->
 </form>
 <br>
 Do you want to delete this recipe?
 <form action="deleteYes.do">
 <input type="text" hidden="true" name="id" value="${recipe.id }">

<button type="submit" class="btn btn-outline-danger" value="delete">Delete</button>


<!--  <input type="submit" value="Delete"> -->
 </form>
 <%@ include file="nav.jsp" %>
 
 
</body>
</html>