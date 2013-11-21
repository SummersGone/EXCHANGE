package com.exchange.struts.action;

import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.exchange.dao.UsersDAO;
import com.exchange.model.Users;
import com.exchange.struts.form.RegisterForm;

public class RegisterAction extends BaseAction{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
	
		if(request.getMethod().toUpperCase().equals("GET"))
		{
			return mapping.findForward("register");
		}else{
			String result="-1";
			try{
				RegisterForm rf=(RegisterForm)form;
				Users user=new Users();
				user.setName(rf.getName());
				user.setBankcardno(rf.getBankcardno());
				user.setIdcardno(rf.getIdcardno());
				user.setContact(rf.getContact());
				user.setPassword(rf.getPassword());
				user.setAnswerforreminder(rf.getAnswerforreminder());
				user.setReminderquestion(rf.getReminderquestion());
				
				user.setIslockon("0");
				user.setLastlogontime(new Date());
				user.setContinuewrongcount((byte)0);
			
				UsersDAO userdao=(UsersDAO) getBean("UsersDAO");
				userdao.save(user);
				System.out.println(user.getIdcardno()+",name="+user.getName());
				result="1";
			}catch(Exception e){
				e.printStackTrace();
			}
			if(result.equals("1"))
			{
				return mapping.findForward("welcome");
			}else
			{
				return mapping.findForward("register");
			}
		}
	}

}
