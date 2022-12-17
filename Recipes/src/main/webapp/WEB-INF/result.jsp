<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${recipe.name }</title>
</head>
<body>
<ul> 
<li> 
${recipe.name }</li>
<li> 
${recipe.ovenTemperature }
</li>
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
 <input type="button" value="Edit">
 </form>
 <br>
 Do you want to delete this recipe?
 <form action="delete.do" method="post">
 <input type="text" hidden="true" name="id" value="${recipe.id }">
 <input type="button" value="Delete">
 </form>
 
 
</body>
</html>