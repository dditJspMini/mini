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

public class UpdateMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url ="redirect:"+request.getContextPath()+"/mypage.did";
		int result = 0;
		MemberVO memberVO = new MemberVO();
		
		memberVO.setId(request.getParameter("id").trim());
		memberVO.setEmail(request.getParameter("email"));
		memberVO.setPwd(request.getParameter("pwd"));
		memberVO.setName(request.getParameter("name"));
		memberVO.setZipNum(request.getParameter("zipNum"));
		memberVO.setAddress(request.getParameter("address"));
		memberVO.setPhone(request.getParameter("phone"));		
	
		MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
		try {
			result = memberDAO.updateMember(memberVO);
			url=url+"?result="+result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
