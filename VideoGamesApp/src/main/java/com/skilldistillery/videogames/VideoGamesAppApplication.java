package com.skilldistillery.videogames;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class VideoGamesAppApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(VideoGamesAppApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(VideoGamesAppApplication.class, args);
	}

}
