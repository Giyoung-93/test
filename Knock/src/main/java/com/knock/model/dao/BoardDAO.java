package com.knock.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knock.model.vo.BoardVO;
import com.knock.model.vo.CommentsVO;
import com.knock.mybatis.DBService;

public class BoardDAO {

	 public static List<BoardVO> list(){
		SqlSession ss = DBService.getFactory().openSession();
		List<BoardVO> boardList = ss.selectList("board.boardList");
		ss.close();
		for (BoardVO board : boardList) {
			System.out.println(board.getSubject());
		}
		return boardList; 
	 }
	
	//게시글 전체조회
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("board.totalCount");
		ss.close();
		return totalCount;
	}
	
	//페이지에 해당하는 게시글 가져오기
	public static List<BoardVO> getList(Map<String, Integer> map){
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BoardVO> boardList = ss.selectList("board.boardList", map);
		ss.close();
		return boardList;
	}
	
	public static List<BoardVO> getList(int begin, int end) {
		SqlSession ss = DBService.getFactory().openSession(true);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		List<BoardVO> list = ss.selectList("board.list", map);
		ss.close();
		return list;
	}
	
	//게시글 1개조회
	public static BoardVO selectOne(String board_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BoardVO vo = ss.selectOne("board.one", board_idx);
		ss.close();
		return vo;
	}
	
	//조회수 1증가처리
	public static void updateHit(int board_idx) {
		
	}
	
	//댓글조회
	public static List<CommentsVO> getCommentsList(String comments_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<CommentsVO> commentsList = ss.selectList("board.commentsList", comments_idx);
		ss.close();
		return commentsList;
	}
	
}