package com.skilldistillery.recipes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.recipes.data.RecipesDAO;

@Controller
public class RecipeController {
	@Autowired
	private RecipesDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String goToHome(Model model) {
		model.addAttribute("recipesList", dao.findAll());
		return "home";
	}
	
	
	
}
