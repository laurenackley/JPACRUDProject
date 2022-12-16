package com.skilldistillery.recipes.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Recipes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String type;
	private String instructions;
	@Column(name="image_url")
	private String imageUrl;
	private Boolean yummy;

	public Recipes() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Boolean getYummy() {
		return yummy;
	}

	public void setYummy(Boolean yummy) {
		this.yummy = yummy;
	}

	@Override
	public String toString() {
		return "Recipes [id=" + id + ", name=" + name + ", type=" + type + ", instructions=" + instructions
				+ ", imageUrl=" + imageUrl + ", yummy=" + yummy + "]";
	}

}
