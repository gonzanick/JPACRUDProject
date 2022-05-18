package com.skilldistillery.videogames.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "video_game")
public class VideoGame {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String genre;
	
	@Column(name="release_year")
	private int releaseYear;
	
	private String developer;
	
	private char multiplayer;
	
	private double price;
	
	private String description;

	public VideoGame() {
		super();
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
	
	

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public String getDeveloper() {
		return developer;
	}

	public void setDeveloper(String developer) {
		this.developer = developer;
	}

	public char getMultiplayer() {
		return multiplayer;
	}

	public void setMultiplayer(char multiplayer) {
		this.multiplayer = multiplayer;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "VideoGame id: " + id + ", name: " + name + ", genre: " + genre + ", releaseYear: " + releaseYear
				+ ", developer: " + developer + ", multiplayer: " + multiplayer + ", price: " + price + "./n Description:"
				+ description;
	}

	

}
