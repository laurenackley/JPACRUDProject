<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${recipe.name }</title>
</head>
<body>
<h2>${recipe.name }</h2>
<ul> 

<c:choose>
				<c:when test="${empty recipe.ovenTemperature }">
<li> No oven needed for this recipe. </li>
				</c:when>
				<c:otherwise>
<li> Oven Temperature: ${recipe.ovenTemperature}</li>
				</c:otherwise>
		</c:choose>

<li> 
${recipe.instructions }
</li>
<li>
${recipe.timeToComplete }
</li>
</ul>
<img src="${recipe.imageUrl }" alt="BakedGood" width="199" height="300">
 <br><br>
 Do you want to edit this recipe?
 <form action="edit.do" method="post">
 <input type="text" hidden="true" name="id" value="${recipe.id }"> 
 <input type="submit" value="Edit">
 </form>
 <br>
 Do you want to delete this recipe?
 <form action="deleteYes.do">
 <input type="text" hidden="true" name="id" value="${recipe.id }">
 <input type="submit" value="Delete">
 </form>
 <%@ include file="nav.jsp" %>
 
 
</body>
</html>