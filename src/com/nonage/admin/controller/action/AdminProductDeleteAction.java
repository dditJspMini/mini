package com.nonage.admin.controller.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.controller.action.Action;
import com.nonage.dao.ProductDAO;
import com.nonage.dao.iBatis.ProductDAO_iBatis;

public class AdminProductDeleteAction implements Action{

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "redirect:adminProductList.did";
		
		ProductDAO_iBatis productDAO = ProductDAO_iBatis.getInstance();
		String prodNum = request.getParameter("key");
		try {
			if(productDAO.deleteProduct(prodNum)==1) {
				url+="?delMsg=success";
			}
			else if(productDAO.deleteProduct(prodNum)==0) {
				url+="?delMsg=fail";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

}
