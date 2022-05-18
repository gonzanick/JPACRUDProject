package com.skilldistillery.videogames.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.videogames.data.VideoGameDAO;

@Controller
public class VideoGameController {
	
	@Autowired
	private VideoGameDAO dao;
	
	@RequestMapping(path= "findGameId.do", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("findById", dao.findById(0));
		
		return "index";
	}

}
