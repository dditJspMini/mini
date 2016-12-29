package com.nonage.admin.controller.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.controller.action.Action;
import com.nonage.dao.QnaDAO;
import com.nonage.dao.iBatis.QnaDAO_iBatis;
import com.nonage.dto.QnaVO;

public class AdminQnaListAction implements Action {

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String url = "qna/qnaList.jsp";

		String key = request.getParameter("key");
		String tpage = request.getParameter("tpage");

		if (key == null) {
			key = "";
		}
		if (tpage == null) {
			tpage = "1"; // 현재 페이지 (default 1)
		} else if (tpage.equals("")) {
			tpage = "1";
		}
		request.setAttribute("key", key);
		request.setAttribute("tpage", tpage);

		/* QnaDAO qnaDAO = QnaDAO_JDBC.getInstance(); */
		QnaDAO qnaDAO = QnaDAO_iBatis.getInstance();
		ArrayList<QnaVO> qnaList = null;
		String paging=null;
		try {
			qnaList = qnaDAO.listAllQna(Integer.parseInt(tpage));
			paging = qnaDAO.pageNumber(Integer.parseInt(tpage));
		} catch (SQLException e) {
			e.printStackTrace();
		}

		request.setAttribute("qnaList", qnaList);
		int n=qnaList.size();   
	    request.setAttribute("qnaListSize",n); 
	    request.setAttribute("paging", paging);  

		return url;
	}
}
