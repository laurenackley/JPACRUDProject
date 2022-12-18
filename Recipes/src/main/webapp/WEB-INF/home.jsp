<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipes</title>
<%@ include file="bootstrapHeader.jsp" %>
<link rel="stylesheet" href="css/stylesheet.css"></link> 
</head>
<body id="body">
	<h1>Welcome to my recipe database! </h1>
	<p class="intro"> 
		Here you will find some of my favorite recipes to make! 
	</p>
<!-- 		Search for a recipe by a keyword:
		<form action="search.do" method="GET">
		Keyword: 
		<input type="text" name="instructions"/>
		<input type="submit" value="Search">
		</form> -->
		
		
	Looking for a recipe by it's Id!
	<form action="getRecipe.do" method="GET">
		Recipe ID: 
		<input type="number" name="rId" />
		 <input type="submit"
			value="Show Recipe" />
	</form>
	<form action="createRecipe.do" method="POST">
	<h5>Create a Recipe</h5><br> 
	<label for="name">Name:</label>
	<input type="text" name="name" required> 
	<!-- 	LOOK UP HOW TO DO A HOOVER WARNING  -->
	<label for="ovenTemperature">Oven:</label>
	<input type="number" name="ovenTemperature"> 

	<label for="instructions">Instructions:</label>
	<input type="text" name="instructions" required> 

	<label for="imageUrl">Enter an image URL if you'd like:</label>
	<input type="text" name="imageUrl"> 

	<label for="timeToComplete">Approximate time it would take to complete:</label>
	<input type="number" name="timeToComplete" required> 
	<input type="submit" value="Create"> 	
	</form>
	
	<p>
		<c:forEach var="recipe" items="${ recipesList}">
Recipe for: 

<a href="getRecipe.do?rId=${recipe.id }">${recipe.name}</a><br>
			<c:choose>
				<c:when test="${empty recipe.ovenTemperature }">
No oven needed for this recipe. <br>
				</c:when>
				<c:otherwise>
What temperature to set your oven to: ${recipe.ovenTemperature}<br>
				</c:otherwise>
		</c:choose>
Instructions: ${recipe.instructions}<br>
It will take approximately ${recipe.timeToComplete } minutes to complete.<br>
			<img src="${recipe.imageUrl }" alt="BakedGood" width="199"
				height="300">
			<br>
			<br>
		</c:forEach>
	</p>
</body>
</html>