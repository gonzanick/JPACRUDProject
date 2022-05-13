package com.skilldistillery.videogames.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class VideoGameTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private VideoGame vg;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAVideoGames");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		vg = em.find(VideoGame.class, 1);
		}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		vg = null;
	}

	@Test
	void test_VideoGame_entity_mapping() {
		assertNotNull(vg);
		equals("The Witcher 3: Wild Hunt");
	}

}
