<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/reset.css">
	<title>パスワード再設定</title>
	</head>
		<body>
			<s:include value="header.jsp" />
				<div class="reset_contents">
					<div class="reset_top">
						<span class="arrow">パスワード再設定</span>
					</div>
	<s:if test="!loginIdErrorMessageList.isEmpty()">
			<div class="error-message">
				<s:iterator value="loginIdErrorMessageList"><s:property />
				</s:iterator>
			</div>
	</s:if>
	<s:if test="!passwordErrorMessageList.isEmpty()">
			<div class="error-message">
				<s:iterator value="passwordErrorMessageList"><s:property />
				</s:iterator>
			</div>
	</s:if>
	<s:if test="!passwordIncorrectErrorMessageList.isEmpty()">
			<div class="error-message">
				<s:iterator value="passwordIncorrectErrorMessageList"><s:property />
				</s:iterator>
			</div>
	</s:if>
	<s:if test="!newPasswordErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="newPasswordErrorMessageList"><s:property />
			</s:iterator>
			</div>
	</s:if>
	<s:if test="!reConfirmationNewPasswordErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="reConfirmationNewPasswordErrorMessageList"><s:property />
			</s:iterator>
			</div>
	</s:if>
	<s:if test="!newPasswordIncorrectErrorMessageList.isEmpty()">
			<div class="error-message">
			<s:iterator value="newPasswordIncorrectErrorMessageList"><s:property />
			</s:iterator>
			</div>
	</s:if>
<s:form action="ResetPasswordConfirmAction">
	<table class="reset_table">
		<tr>
			<th scope="row"><s:label value="ログインID"/></th>
			<td><s:textfield name="loginId" placeholder="ログインID" /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="現在のパスワード"/></th>
			<td><s:password name="password" placeholder="現在のパスワード" /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="新しいパスワード"/></th>
			<td><s:password name="newPassword" placeholder="新しいパスワード" /></td>
		</tr>
		<tr>
			<th scope="row"><s:label value="新しいパスワード(再確認)" /></th>
			<td><s:password name="reConfirmationPassword" placeholder="新しいパスワード(再確認)" /></td>
		</tr>
	</table>
	<s:submit value="確認画面へ" class="btn_blue" />
</s:form>
				</div>
			<s:include value="footer.jsp"/>
		</body>
</html>