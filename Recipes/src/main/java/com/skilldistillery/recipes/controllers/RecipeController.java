package com.skilldistillery.recipes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		if (r == null) {
			return "error";
		}
		return "result";
	}

	@RequestMapping(path = "createRecipe.do", method = RequestMethod.POST)
	public String createRecipe(Recipes recipe, Model model) {
		Recipes rCreate = dao.create(recipe);
		model.addAttribute("recipe", rCreate);
		return "result";
	}

	@RequestMapping(path = "edit.do")
	public String editConfirm(@RequestParam int id, Model model) {
		Recipes r = dao.findById(id);
		model.addAttribute("recipe", r);
		return "editConfirm";
	}

	@RequestMapping(path = "editRecipe.do", method = RequestMethod.POST)
	public String update(@RequestParam int id, Recipes recipe, Model model) {
		Recipes r = dao.update(id, recipe);
		model.addAttribute("recipe", r);
		return "result";
	}

	@RequestMapping(path = "deleteYes.do")
	public String delete(@RequestParam int id) {
		dao.delete(id);
		return "delete";
	}

}
