<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/reset.css">
	</head>
		<body>
		<s:include value="header.jsp"/>
			<div class="confirm_contents">
				<div class="reset_top">
				<p>パスワード再設定確認</p>
				</div>
					<p>登録する内容は以下でよろしいですか？</p>
					<s:form action="ResetPasswordCompleteAction">
						<table class="reset_table">
							<tr>
							<th scope="row"><s:label value="ログインID"/></th>
							<td><s:property value="loginId"/></td>
							</tr>
							<tr>
							<th scope="row"><s:label value="新しいパスワード"/></th>
							<td><s:property value="concealPassword"/></td>
							</tr>
						</table>
					<s:hidden name="loginId" value="%{loginId}"/>
					<s:hidden name="newPassword" value="%{newPassword}"/>
				<div class="button">
					<s:token/>
					<s:submit value="送信" class="btn_blue"/>
				</div>
					</s:form>
			</div>
		<s:include value="footer.jsp"/>
		</body>
</html>