package com.sfm.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import com.sfm.model.BoardVO;
import com.sfm.service.BoardService;
import com.sfm.utils.PagingVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String home(Model model,PagingVO vo,@RequestParam(value="nowPage", required=false)String nowPage
			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {

		int total = boardService.countBoard();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("viewAll", boardService.selectBoard(vo));

		model.addAttribute("list", boardService.listView());
		return "home";
	}

	@RequestMapping(method = RequestMethod.POST,value = "write")
	public String write(BoardVO vo){
		boardService.insertBoard(vo);
		return "redirect:/#services";
	}

	@RequestMapping(method = RequestMethod.POST,value = "modify")
	public String modify(BoardVO vo){
		boardService.updateBoard(vo);
		return "redirect:/#services";
	}

	@RequestMapping(method = RequestMethod.POST,value = "delete")
	public String delete(@RequestParam("b_no")int b_no){
		boardService.deleteBoard(b_no);
		return "redirect:/#services";
	}
	@RequestMapping("login")
	public String login(){
		return "/member/loginPage";
	}

//	@RequestMapping(method = RequestMethod.GET,value = "boardList")
//	public String boardList(PagingVO vo, Model model
//			, @RequestParam(value="nowPage", required=false)String nowPage
//			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
//
//		int total = boardService.countBoard();
//		if (nowPage == null && cntPerPage == null) {
//			nowPage = "1";
//			cntPerPage = "5";
//		} else if (nowPage == null) {
//			nowPage = "1";
//		} else if (cntPerPage == null) {
//			cntPerPage = "5";
//		}
//		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
//		model.addAttribute("paging", vo);
//		model.addAttribute("viewAll", boardService.selectBoard(vo));
//		return "board/boardPaging";
//	}

}