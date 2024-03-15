package com.example.HiddenGem.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.HiddenGem.entity.BoardF;

@Service
public interface BoardFService {
	public static final int COUNT_PER_PAGE = 6; // 한 페이지당 글의 목록 및 갯수
	public static final int PAGE_PER_SCREEN = 10; // 한 화면에 표시되는 페이지 갯수
	
	BoardF getBoard(int bid);
	
	int getBoardFCount(String field, String query);
	
	List<BoardF> getBoardFList(int page, String field, String query);
	
	void insertBoardF(BoardF boardF);
	
	void increaseViewCount(int bid);
	
	void increaseReplyCount(int bid);
	
	void increaseLikeCount(int bid);
	
	void updateLikeCount(int bid, int count);
}
