package com.sample.board.web;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sample.board.service.BoardService;
import com.sample.board.vo.Board;
import com.sample.board.vo.BoardForm;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value= {"/home.do","/list.do"})
	public String list(Model model) {
		
		List<Board> boards = boardService.getAllBoards();
		model.addAttribute("boards", boards);
		
		return "/WEB-INF/views/list.jsp";
	}
	
	@RequestMapping("/form.do")
	public String form() {
		return "/WEB-INF/views/form.jsp";
	}
	
	@RequestMapping("/add.do")
	public String submit(BoardForm boardForm) {

		Board board = new Board();
		BeanUtils.copyProperties(boardForm, board);
		
		boardService.addNewBoard(board);
		
		return "redirect:/home.do";
	}
	
	@RequestMapping("/detail.do")//@RequestParam("no") int no || @RequestParam(value="no", required=false, defaultValue="1") int no<< 이렇게도 쓸수 있다. int no 자리에 
	public String detail(int no, Model model) {
		Board board = boardService.getBoardInfo(no);
		model.addAttribute("board", board);
		
		return "WEB-INF/views/detail.jsp";
	}
}
