package com.skilldistillery.recipes.data;

import java.util.List;

import com.skilldistillery.recipes.entities.Recipes;


public interface RecipesDAO {

	Recipes findById(int recipeId);
	List<Recipes> findAll();
	Recipes create(Recipes recipeOriginal);
	Recipes update(int recipeId, Recipes recipe);
	boolean delete(int recipeId);
//	List<Recipes> findByKeyword(String instructions);
}
