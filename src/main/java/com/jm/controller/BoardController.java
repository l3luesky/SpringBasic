package com.jm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jm.entity.Board;
import com.jm.entity.Member;
import com.jm.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper mapper;
	
	@RequestMapping("/list.do")
	private String list(Model model) {	// HttpServletRequest 방식으로도 request.setAttribute("list", list) 가능 
		List<Board> list = mapper.list();
		model.addAttribute("list", list);
		return "board/boardList";	// ViewResolver -> 접두사와 접미사로 물리적인 경로를 보낸다. -> 해당 경로를 forwording 
	}
	
	@RequestMapping(value ="/register.do", method = RequestMethod.GET)
	private String register() {
		
		
		return "board/register";
	}	
	@RequestMapping(value ="/register.do", method = RequestMethod.POST)
	private String register(Board vo) {
		mapper.register(vo);
		return "redirect:/list.do";
	}
	
	@RequestMapping(value ="/view.do")
	private String getByIdx(int idx, Model model) {
		Board vo = mapper.getByIdx(idx);
		model.addAttribute("vo",vo);
		return "board/view";
	}	
	@RequestMapping(value ="/remove.do")
	private String remove(int idx) {
		mapper.remove(idx);
		return "redirect:/list.do";
	}	
	@RequestMapping(value ="/update.do", method = RequestMethod.GET)
	private String update(int idx,Model model) {
		Board vo = mapper.getByIdx(idx);
		model.addAttribute("vo",vo);
		return "board/update";
	}	
	@RequestMapping(value ="/update.do", method = RequestMethod.POST)
	private String update(Board vo,RedirectAttributes attr) {
		mapper.update(vo);
		attr.addAttribute("idx", vo.getIdx());	// 1회성 세션
		return "redirect:/view.do";
	}	
	@RequestMapping(value ="/login.do", method = RequestMethod.POST)
	private String login(Member mvo, HttpSession session) {
		Member muser = mapper.login(mvo);
		if (muser != null) {
			session.setAttribute("muser", muser);
		}
		return "redirect:/list.do";
	}	
	@RequestMapping(value ="/logout.do", method = RequestMethod.POST)
	private String login(HttpSession session) {
		session.invalidate();
		return "redirect:/list.do";
	}	
	
}
















