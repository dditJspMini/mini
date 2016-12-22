package com.nonage.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.dao.MemberDAO;
import com.nonage.dao.iBatis.MemberDAO_iBatis;
import com.nonage.dto.MemberVO;
import com.nonage.mail.res.MailMessageBean;
import com.nonage.mail.send.SendMail;

public class UserPwdFindAction implements Action {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SendMail sendMail = new SendMail();
		sendMail.mailSendingEnvironment();
		String url = "redirect:"+request.getContextPath()+"/findForm.did";
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pwd = null;
		String message = "";

		if (email != null && email.trim().equals("") == false) {
			MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
			try {
				MemberVO member = memberDAO.serchPwd(name, email);
				if(member!=null){
					pwd = member.getPwd();
					message=email;
					MailMessageBean msgBean = new MailMessageBean();
					msgBean.setSenderID("yeogandalf.test@gmail.com");
					msgBean.setSenderPwd("gudalsToaqkqh");
					msgBean.setSenderName("프블");
					msgBean.setSubject("패스워드 입니다.");
					msgBean.setContent("당신의 패스워드는"+pwd+"입니다.");
					msgBean.setReceiverEmail(email);
					sendMail.mailSending(msgBean);
				}
				//request.setAttribute("message", message);
				url= url+"?pwdmessage="+message;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return url;
	}
}







