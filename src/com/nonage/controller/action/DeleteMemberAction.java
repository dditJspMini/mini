package com.nonage.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nonage.dao.MemberDAO;
import com.nonage.dao.iBatis.MemberDAO_iBatis;
import com.nonage.dto.MemberVO;

public class DeleteMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url ="redirect:"+request.getContextPath()+"/index.did";
		int result = 0;
	
		MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
		try {
			result = memberDAO.deleteMember(request.getParameter("id").trim());
			url=url+"?deleteresult="+result;
			session.invalidate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
