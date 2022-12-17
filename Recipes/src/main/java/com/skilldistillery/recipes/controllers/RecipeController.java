package com.skilldistillery.recipes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.recipes.data.RecipesDAO;
import com.skilldistillery.recipes.entities.Recipes;

@Controller
public class RecipeController {
	@Autowired
	private RecipesDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String goToHome(Model model) {
		model.addAttribute("recipesList", dao.findAll());
		return "home";
	}

	@RequestMapping(path = "getRecipe.do")
	public String findRecipe(@RequestParam int rId, Model model) {
		Recipes r = dao.findById(rId);
		model.addAttribute("recipe", r);	
		if(r == null) {
			return "error";
		}
		return "result";
	}
	
	@RequestMapping(path = "createRecipe.do")
	public String createRecipe(@RequestParam("id") int id,
			@RequestParam("name") String name,
			@RequestParam("ovenTemperature") int ovenTemperature,
			@RequestParam("instructions") String instructions,
			@RequestParam("imageUrl") String imageUrl,
			@RequestParam("timeToComplete") int timeToComplete, Model model
			) {
			model.addAttribute("name", name);
			model.addAttribute("ovenTemperature", ovenTemperature);
			model.addAttribute("instructions", instructions);
			model.addAttribute("imageUrl", imageUrl);
			model.addAttribute("timeToComplete", timeToComplete);
		
		return "result";
	}
	
//	@RequestMapping(path="editRecipe.do")
//	public String update() {
//}
}
