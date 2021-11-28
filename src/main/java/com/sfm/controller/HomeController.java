package com.sfm.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import com.sfm.model.BoardVO;
import com.sfm.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("list", boardService.listView());
		
		return "home";
	}
	@RequestMapping(method = RequestMethod.POST,value = "write")
	public String write(BoardVO vo){
		boardService.insertBoard(vo);
		return "redirect:/#services";
	}

}