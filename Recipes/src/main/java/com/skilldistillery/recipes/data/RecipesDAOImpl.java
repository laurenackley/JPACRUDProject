package com.skilldistillery.recipes.data;

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

	@Override
	public List<Recipes> findAll() {
		String jpql = "SELECT r FROM Recipes r";
		return em.createQuery(jpql, Recipes.class).getResultList();
	}

	@Override
	public Recipes create(Recipes recipeOriginal) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Recipes update(int recipeId, Recipes recipe) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int recipeId) {
		// TODO Auto-generated method stub
		return false;
	}

}
