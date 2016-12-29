package com.nonage.admin.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nonage.controller.action.Action;
import com.nonage.dao.MemberDAO;
import com.nonage.dao.iBatis.MemberDAO_iBatis;
import com.nonage.dto.MemberVO;

public class AdminUpdateMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url ="redirect:"+request.getContextPath()+"/admin/adminMemberList.did";
		int result = 0;
		MemberVO memberVO = new MemberVO();
		MemberVO updatememberVO = new MemberVO();
		memberVO.setId(request.getParameter("editId").trim());
		memberVO.setEmail(request.getParameter("editEmail"));
		memberVO.setPwd(request.getParameter("editPwd"));
		memberVO.setName(request.getParameter("editName"));
		memberVO.setZipNum(request.getParameter("editZipNum"));
		memberVO.setAddress(request.getParameter("editAddr"));
		memberVO.setPhone(request.getParameter("editPhone"));		
		memberVO.setUseyn(request.getParameter("editUseyn"));
		
		MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
		try {
			result = memberDAO.updateMemberAdmin(memberVO);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
