package com.nonage.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.dao.AddressDAO;
import com.nonage.dao.MemberDAO;
import com.nonage.dao.iBatis.AddressDAO_iBatis;
import com.nonage.dao.iBatis.MemberDAO_iBatis;
import com.nonage.dto.AddressVO;
import com.nonage.dto.MemberVO;

public class UserIdFindAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "redirect:"+request.getContextPath()+"/findForm.did";
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String id = null;
		String message = "";

		if (phone != null && phone.trim().equals("") == false) {
			MemberDAO memberDAO = MemberDAO_iBatis.getInstance();
			try {
				MemberVO member = memberDAO.serchId(name,phone);
				if(member!=null){
					id = member.getId();
					message=id;
				}
				//request.setAttribute("message", message);
				url= url+"?message="+message;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return url;
	}
}







