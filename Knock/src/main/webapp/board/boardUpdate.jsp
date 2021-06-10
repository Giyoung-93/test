<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<div id="board">
		<h1>게시글 수정</h1>
		<form name="frm" method="post" action="#">
			<input type="hidden" name="command" value="board_update">
			<input type="hidden" name="board_idx" value="${board.board_idx }">
			<table>
				<tr>
					<th>작성자</th>
					<td><input type="text" size="12" name="name" value="${board.user_idx }"> * 필수</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" size="12" name="pass"> * 필수 (게시물 수정 삭제시 필요합니다.)</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" size="12" name="subject" value="${board.user_idx }"> * 필수</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="70" rows="15" name="content">${board.b_content }"</textarea></td>
				</tr>
				<tr>
					<th>파일첨부</th>
					<td>ㅋ</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="등록" onclick="return boardCheck()">
			<input type="reset" value="다시작성">
			<input type="button" value="목록" onclick="location.href=boardList.jsp">
		</form>
	</div>
</body>
</html>