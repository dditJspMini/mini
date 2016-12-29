package com.nonage.admin.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.controller.action.Action;
import com.nonage.dao.MemberDAO;
import com.nonage.dao.iBatis.MemberDAO_iBatis;
import com.nonage.dto.MemberVO;

public class AdminMemberListAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String url = "member/memberList.jsp";
		String key = "";
		String tpage = request.getParameter("tpage");

		if (request.getParameter("key") != null) {
			key = request.getParameter("key");
		}

		if (tpage == null) {
			tpage = "1"; // 현재 페이지 (default 1)
		} else if (tpage.equals("")) {
			tpage = "1";
		}
		
		request.setAttribute("key", key);
	    request.setAttribute("tpage",tpage);

		MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
		ArrayList<MemberVO> memberList = null;
		String paging=null;
		try {
			memberList = memberDAO.listMember(Integer.parseInt(tpage),key);
			paging = memberDAO.pageNumber(Integer.parseInt(tpage), key);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("memberList", memberList);
		int n=memberList.size();   
	    request.setAttribute("memberListSize",n); 
	    request.setAttribute("paging", paging);   

		return url;
	}
}
