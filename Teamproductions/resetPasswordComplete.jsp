<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/reset.css">
	<meta http-equiv="refresh" content="5;URL=HomeAction">
		<title>UserCreateComplete画面</title>
	</head>
	<body>
	<s:include value="header.jsp"/>
	<div class="contents">
		<div class="complete">
			<div class="complete_top">
				<h1>パスワード再設定完了</h1>
			</div>
				<div>
					<h3>パスワードの再設定が完了しました。</h3>
				</div>
		</div>
	</div>
	<s:include value="footer.jsp"/>
	</body>
</html>