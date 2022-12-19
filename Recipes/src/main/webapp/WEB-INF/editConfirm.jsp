<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<%@ include file="bootstrapHeader.jsp" %>
<link rel="stylesheet" href="css/stylesheet.css"></link> 

</head>
<body id="body">
<form action="editRecipe.do" method="post">

<label for="name">Name:</label>
<input type="text" name="name" value="${recipe.name }" required><br>

<label for="ovenTemperature">Oven Temperature: </label>
<input type="number" name="ovenTemperature" value="${recipe.ovenTemperature }"><br>

<label for="timeToComplete">Approximate time it would take to complete:</label>
<input type="number" name="timeToComplete" value="${recipe.timeToComplete }" required><br>

<label for="imageUrl" id="url">Image URL:</label>
<input type="text" name="imageUrl" value="${recipe.imageUrl }"><br>

<label for="instructions" id="instructions">Instructions:</label>
<input type="text" name="instructions" value="${recipe.instructions }" required><br>

 <input type="text" hidden="true" name="id" value="${recipe.id }"> 


<input type="submit" value="Submit">
</form>

<%@ include file="nav.jsp" %>

</body>
</html>