package com.skilldistillery.videogames.data;

import java.util.List;

import com.skilldistillery.videogames.entities.VideoGame;

public interface VideoGameDAO {
	
	VideoGame findById(int vgId);
	List<VideoGame> findAll();

}
