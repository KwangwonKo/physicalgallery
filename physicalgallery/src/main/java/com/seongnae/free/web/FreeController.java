package com.seongnae.free.web;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seongnae.common.vo.PagingVO;
import com.seongnae.free.dao.IFreeBoardDao;
import com.seongnae.free.vo.FreeBoardVO;
@Controller
public class FreeController {
	@Inject
	IFreeBoardDao freeBoardDao;
	
	@RequestMapping("/free/freeList.kd")
	public String freeList(Model model, @ModelAttribute("paging")PagingVO paging) {
		int totalRowCount = freeBoardDao.getTotalRowCount(paging);
		paging.setTotalRowCount(totalRowCount);
		paging.pageSetting();
		List<FreeBoardVO> freeBoardList=freeBoardDao.getBoardList(paging);
		model.addAttribute("freeBoardList",freeBoardList);
		model.addAttribute("totalCnt", totalRowCount);
		return "free/freeList";
	}
	
	@RequestMapping("/free/freeView.kd")
	public String freeView(Model model, int boNo) {
		FreeBoardVO freeBoard=freeBoardDao.getBoard(boNo);
		model.addAttribute("freeBoard",freeBoard);
		return "free/freeView";
	}
	
	@RequestMapping("/free/freeEdit.kd")
	public String freeEdit(Model model, int boNo) {
		FreeBoardVO freeBoard=freeBoardDao.getBoard(boNo);
		model.addAttribute("freeBoard",freeBoard);
		return "/free/freeEdit";
	}
	
	@RequestMapping("/free/freeModify.kd")
	public String freeModify(@ModelAttribute("freeBoard")FreeBoardVO freeBoard) {
		freeBoardDao.updateBoard(freeBoard);
		return "/free/freeModify";
	}
	@RequestMapping("/free/freeDelete.kd")
	public String freeDelete(@ModelAttribute("freeBoard")FreeBoardVO freeBoard) {
		freeBoardDao.deleteBoard(freeBoard);
		return "free/freeDelete";
	}
	
	@RequestMapping("/free/freeForm.kd")
	public String freeForm() {
		return "free/freeForm";
	}
	
	@RequestMapping("/free/freeRegist.kd")
	public String freeEdit(@ModelAttribute("freeBoard")FreeBoardVO freeBoard) {
		freeBoardDao.insertBoard(freeBoard);
		return "free/freeRegist";
	}
	
}
