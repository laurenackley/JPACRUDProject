package com.skilldistillery.recipes.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class RecipesTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Recipes recipe;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPARecipes");

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		recipe = em.find(Recipes.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		recipe = null;
	}

	@Test
	void test_Recipes_entity_mapping() {
		assertNotNull(recipe);
		assertEquals("Oatmeal Butterscotch", recipe.getName());
		assertEquals(90, recipe.getTimeToComplete());
	}

}
