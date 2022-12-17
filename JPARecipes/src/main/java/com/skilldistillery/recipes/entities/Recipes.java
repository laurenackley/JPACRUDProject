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
	@Column(name="oven_temperature")
	private Integer ovenTemperature;
	private String instructions;
	@Column(name="image_url")
	private String imageUrl;
	@Column(name="time_to_complete")
	private int timeToComplete;

	@Override
	public String toString() {
		return "Recipes [id=" + id + ", name=" + name + ", ovenTemperature=" + ovenTemperature + ", instructions="
				+ instructions + ", imageUrl=" + imageUrl + ", timeToComplete=" + timeToComplete + "]";
	}

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

	public Integer getOvenTemperature() {
		return ovenTemperature;
	}

	public void setOvenTemperature(Integer ovenTemperature) {
		this.ovenTemperature = ovenTemperature;
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

	public int getTimeToComplete() {
		return timeToComplete;
	}

	public void setTimeToComplete(int timeToComplete) {
		this.timeToComplete = timeToComplete;
	}



}
