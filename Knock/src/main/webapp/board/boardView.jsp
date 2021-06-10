<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
	<div id="board">
		<h1>게시글 상세보기</h1>
		<table>
			<tr>
				<th>제목</th>
				<td>${board.subject }</td>
				<th>작성자</th>
				<td>${board.user_idx }</td>
			</tr>
			<tr>
				<th>사진</th>
				<td colspan="3">${board.b_file }</td>
				<th>내용</th>
				<td colspan="3"><pre>${board.b_content }</pre></td>		
			</tr>
		</table>
		<table>
			<tr>
				<td><input id="writer" placeholder="이름" ></td>
				<td rowspan="2">
					<button id="btnSave" type="button">확인</button>
				</td>
			</tr>
			<tr>
				<td><textarea rows="5" cols="50"
					placeholder="댓글 내용을 입력하세요." id="content"></textarea></td>
			</tr>
		</table>
		<div id="commentsList"></div>
		<br><br>
		<input type="button" value="닫기" onclick="location.href='boardView.jsp'">
	</div>
</body>
</html>