package com.example.HiddenGem.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.HiddenGem.entity.BoardF;
import com.example.HiddenGem.service.BoardFService;
import com.example.HiddenGem.util.JsonUtil;

import jakarta.servlet.http.HttpSession;


@Controller
@RequestMapping("/boardf")
public class BoardFController {
	/*
	 * 변수 선언
	 */
	@Autowired
	private BoardFService boardFService;
	@Autowired
	private JsonUtil jsonUtil;
	// 다른 변수 더 넣을 공간
	
	
	@Value("${spring.servlet.multipart.location}") private String uploadDir;
	
	/*
	 * 여기부터 구현
	 */
	
@GetMapping("/list") // 이름은 p로하고 값이 없으면 1로
	
	public String list(@RequestParam(name = "p", defaultValue = "1") int page,
			@RequestParam(name = "f", defaultValue = "title") String field,
			@RequestParam(name = "q", defaultValue = "") String query, HttpSession session, Model model) {
		List<BoardF> boardFList = boardFService.getBoardFList(page, field, query);

		// pagenation
		int totalBoardCount = boardFService.getBoardFCount(field, query);

		// 자바의 기본값이 double이니 double 사용함
		int totalPages = (int) Math.ceil(totalBoardCount / (double) BoardFService.COUNT_PER_PAGE);

		int startPage = (int) Math.ceil((page - 0.5) / BoardFService.PAGE_PER_SCREEN - 1) * BoardFService.PAGE_PER_SCREEN
				+ 1;
		int endPage = Math.min(totalPages, startPage + BoardFService.PAGE_PER_SCREEN - 1);
		List<String> pageList = new ArrayList<>();
		for (int i = startPage; i <= endPage; i++) {
			pageList.add(String.valueOf(i));
		}

		// 파라미터 넘기기- 어디갔다가 다시오면 안나올 수 있음

		session.setAttribute("currentBoardPage", page);
		model.addAttribute("boardList", boardFList);
		model.addAttribute("field", field);
		model.addAttribute("query", query);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("pageList", pageList);

		return "boardf/list";
	}

	@GetMapping("/insert")
	public String insertForm(Model model) {
		return "boardf/insert";
	}

	@PostMapping("/insert")
	public String insertProc(String title, String foodCategory, String opening,  
	        String location, String tel, String info, String uid,
	        MultipartHttpServletRequest req, HttpSession session) {
	    
	    String sessUid = (String) session.getAttribute("sessUid");
	    List<MultipartFile> uploadFileList = req.getFiles("files");

	    List<String> fileList = new ArrayList<>();
	    for (MultipartFile part: uploadFileList) { 
	        // 첨부 파일이 없는 경우 - application/octet-stream
	        if (part.getContentType().contains("octet-stream"))
	            continue;
	        
	        String filename = part.getOriginalFilename();
	        String uploadPath = uploadDir  + "foodUpload/" + filename;
	        try {
	            part.transferTo(new File(uploadPath));
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        String fileUrl = "/foodUpload/" + filename; // 이미지의 원본 주소 생성
	        fileList.add(fileUrl); // 이미지의 원본 주소를 리스트에 추가
	    }
	    String files = jsonUtil.list2Json(fileList);
	    
	    // boardf에 들어가야 하는 것
	    BoardF board = new BoardF( title, foodCategory, opening, location,  
	            tel, info, sessUid, files);
	    boardFService.insertBoardF(board);
	    return "redirect:/boardf/list";
	}

	// detail 넣을 자리


	// reply, like 처리 자리
	
}
