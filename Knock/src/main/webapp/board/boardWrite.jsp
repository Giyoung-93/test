<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	<div id="board">
		<h1>게시글 등록</h1>
			<form name="form" method="post">
				<input type="hidden" name="command" value="board_write">
				<table>
					<tr>
						<th>작성자</th>
						<td><input type="text" name="subject" maxlength="50"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="b_content" maxlength="3000" style="height:350px"></textarea></td>
					</tr>
				</table>
				<br>
				<input type="button" value="등록" onclick="location.href='boardList.jsp'">
				<input type="reset" value="다시 작성">
				<input type="button" value="목록으로" onclick="location.href='boardList.jsp'">
			</form>
	</div>
</body>
</html>