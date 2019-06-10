package com.action;

import com.dao.memberDAO;
import com.model.member;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class memberAction extends ActionSupport{
	
	member m = new member();
	
	public String login() {
		member member=memberDAO.checklogin(m.getAccount(), m.getPassword());
		
		if(member!=null) 
		{
			
			ActionContext.getContext().getSession().put("MEMBER" , member);
			
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}

	public String register() {
		m.setIdentity("m");
		if(memberDAO.checkRegister(m.getAccount())) {
			return "exist";
		}
		memberDAO.register(m);
		ActionContext.getContext().getSession().put("MEMBER" , m);
		return SUCCESS;		
	}
	
	
	
	public member getM() {
		return m;
	}

	public void setM(member m) {
		this.m = m;
	}
	
	
}
