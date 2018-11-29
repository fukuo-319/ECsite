package com.internousdev.casablanca.action;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.casablanca.dao.MCategoryDAO;
import com.internousdev.casablanca.dao.UserInfoDAO;
import com.internousdev.casablanca.dto.MCategoryDTO;
import com.opensymphony.xwork2.ActionSupport;
public class ResetPasswordCompleteAction extends ActionSupport implements SessionAware {

	private String loginId;
	private String newPassword;
	private Map<String,Object>session;

	public String execute(){
		String result=ERROR;
		UserInfoDAO userInfoDAO=new UserInfoDAO();
		int count=userInfoDAO.resetPassword(loginId,newPassword);
		if(count>0){
			result=SUCCESS;
		}
		if(!session.containsKey("mCategoryDtoList")) {
			MCategoryDAO mCategoryDAO=new MCategoryDAO();
			List<MCategoryDTO> mCategoryDtoList= mCategoryDAO.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}
		return result;
	}

	public void setLoginId(String loginId){
		this.loginId=loginId;
	}
	public void setNewPassword(String newPassword){
		this.newPassword=newPassword;
	}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
