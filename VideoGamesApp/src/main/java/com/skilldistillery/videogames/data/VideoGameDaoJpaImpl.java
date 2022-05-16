package com.skilldistillery.videogames.data;

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
		return null;
	}

}
