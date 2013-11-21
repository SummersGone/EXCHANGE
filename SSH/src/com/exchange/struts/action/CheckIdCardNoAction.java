package com.exchange.struts.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.exchange.dao.UsersDAO;
import com.exchange.model.Users;
import com.google.gson.Gson;

public class CheckIdCardNoAction extends BaseAction {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		String idcardno=request.getParameter("idcardno");
		if(idcardno!=null)
		{
			try{
				boolean result=false;
				UsersDAO userdao=(UsersDAO) getBean("UsersDAO");
				Users user=userdao.findById(idcardno);
				if(user==null)
				{
					result=true;
				}
				response.setCharacterEncoding("utf-8");
				response.setContentType("html/text");
				PrintWriter out=response.getWriter();
				Gson gson=new Gson();
				out.write(gson.toJson(result));
				out.flush();
				out.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		return null;
	}

}
