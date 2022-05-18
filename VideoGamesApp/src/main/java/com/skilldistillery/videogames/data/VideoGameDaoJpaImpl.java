package com.skilldistillery.videogames.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.videogames.entities.VideoGame;

@Service
@Transactional
public class VideoGameDaoJpaImpl implements VideoGameDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public VideoGame findById(int vgId) {
		// TODO Auto-generated method stub
		return em.find(VideoGame.class, vgId);
	}

	@Override
	public List<VideoGame> findAll() {
		// TODO Auto-generated method stub
//		return em.find(VideoGame.class);
		return null;
	}
	
	public List<VideoGame> findGamesByKeyword(String keyPhrase) {
		List<VideoGame> games = new ArrayList<>();
		return (List<VideoGame>) em.find(VideoGame.class, games);
	}

}
