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

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "member/login_fail.jsp";
		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String useyn = "y";
		// MemberDAO memberDAO = MemberDAO_JDBC.getInstance();
		MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
		MemberVO memberVO = null;
		
		try {
			memberVO = memberDAO.getMember(id);
			if(memberVO!=null){
				useyn=memberVO.getUseyn();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(useyn);
		if (memberVO != null) {
			if(memberVO.getUseyn().equals("n")){
				url=url+"?useyn=n";
			}else{
				if (isAdminUser(id)) { // Admin
					if (memberVO.getPwd().equals(pwd)) {
						session.removeAttribute("id");
						session.setAttribute("loginUser", memberVO);
						url = "redirect:"+request.getContextPath() +"/admin/adminProductList.did";
					}
				} else { // 일반 User

					if (memberVO.getPwd().equals(pwd)) {
						session.removeAttribute("id");
						session.setAttribute("loginUser", memberVO);
						url = "index.did?login=1";
					}
				}		
			}
		}
		return url;
	}

	private boolean isAdminUser(String id) {
		return id.equals("admin");
	}

}
