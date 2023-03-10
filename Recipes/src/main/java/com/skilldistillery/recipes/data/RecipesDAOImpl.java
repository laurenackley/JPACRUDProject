package com.skilldistillery.recipes.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.recipes.entities.Recipes;

@Service
@Transactional
public class RecipesDAOImpl implements RecipesDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Recipes findById(int recipeId) {
		return em.find(Recipes.class, recipeId);
	}

//	@Override
//	public List<Recipes> findByKeyword(String instructions) {
//		String jpql = "SELECT r FROM Recipes r WHERE r.instructions LIKE '%:instructions%'";
//		List<Recipes> recipes = (em.createQuery(jpql, Recipes.class).setParameter("instructions", instructions).getResultList());
//		System.out.println(recipes);
//		return recipes;
//	}

	
	@Override
	public List<Recipes> findAll() {
		String jpql = "SELECT r FROM Recipes r";
		return em.createQuery(jpql, Recipes.class).getResultList();
	}

	@Override
	public Recipes create(Recipes recipeOriginal) {
		em.persist(recipeOriginal);

		return recipeOriginal;
	}

	@Override
	public Recipes update(int recipeId, Recipes recipe) {

		Recipes recipeUpdate = em.find(Recipes.class, recipeId);
		if (recipeUpdate != null) {
			recipeUpdate.setName(recipe.getName());
			recipeUpdate.setImageUrl(recipe.getImageUrl());
			recipeUpdate.setInstructions(recipe.getInstructions());
			recipeUpdate.setOvenTemperature(recipe.getOvenTemperature());
			recipeUpdate.setTimeToComplete(recipe.getTimeToComplete());
		}

		return recipeUpdate;
	}

	@Override
	public boolean delete(int recipeId) {
		boolean success = false;
		Recipes r = em.find(Recipes.class, recipeId);

		if (r != null) {
			em.remove(r);
			success = !em.contains(r);
		}

		return success;
	}

}
