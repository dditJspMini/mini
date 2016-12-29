package com.nonage.dao.iBatis;

import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.nonage.dao.MemberDAO;
import com.nonage.db.sqlconfig.IBatisDBConnector;
import com.nonage.dto.MemberVO;

public class MemberDAO_iBatis implements MemberDAO {
	private SqlMapClient client = IBatisDBConnector.getSqlMapInstance();
	private static MemberDAO_iBatis instance = new MemberDAO_iBatis();

	private MemberDAO_iBatis() {
	}

	public static MemberDAO_iBatis getInstance() {
		return instance;
	}

	@Override
	public int confirmID(String userid) throws SQLException {
		int result = -1;
		MemberVO member = (MemberVO) client.queryForObject("confirmID", userid);
		if (member != null) {
			result = 1;
		} else {
			result = -1;
		}
		return result;
	}

	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = (MemberVO) client.queryForObject("getMember", id);
		return member;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws SQLException {
		int result = -1;
		if (client.insert("insertMember", memberVO) != null) {
			result=-1;
		} else {
			result=1;
		}
		return result;
	}

	public int totalMember(String member_name) throws SQLException {
		int total_pages = 0;
		if (member_name.equals("")) {
			member_name = "%";
		}
		total_pages = (Integer) client.queryForObject("totalMember",
				member_name);
		return total_pages;
	}

	static int view_rows = 10; // 페이지의 개수
	static int counts = 10; // 한 페이지에 나타낼 상품의 개수

	public String pageNumber(int tpage, String member_name) throws SQLException {
		String str = "";

		int total_pages = totalMember(member_name);
		int page_count = total_pages / counts + 1;

		if (total_pages % counts == 0) {
			page_count--;
		}
		if (tpage < 1) {
			tpage = 1;
		}

		int start_page = tpage - (tpage % view_rows) + 1;
		int end_page = start_page + (counts - 1);

		if (end_page > page_count) {
			end_page = page_count;
		}
		if (start_page > view_rows) {
			str += "<a href='adminMemberList.did?tpage=1&key=" + member_name
					+ "'>&lt;&lt;</a>&nbsp;&nbsp;";
			str += "<a href='adminMemberList.did?tpage=" + (start_page - 1);
			str += "&key=<%=member_name%>'>&lt;</a>&nbsp;&nbsp;";
		}

		for (int i = start_page; i <= end_page; i++) {
			if (i == tpage) {
				str += "<font color=red>[" + i + "]&nbsp;&nbsp;</font>";
			} else {
				str += "<a href='adminMemberList.did?tpage=" + i + "&key="
						+ member_name + "'>[" + i + "]</a>&nbsp;&nbsp;";
			}
		}

		if (page_count > end_page) {
			str += "<a href='adminMemberList.did?tpage=" + (end_page + 1)
					+ "&key=" + member_name + "'> &gt; </a>&nbsp;&nbsp;";
			str += "<a href='adminMemberList.did?tpage=" + page_count
					+ "&key=" + member_name + "'> &gt; &gt; </a>&nbsp;&nbsp;";
		}
		return str;
	}

	@Override
	public ArrayList<MemberVO> listMember(int tpage, String member_name)
			throws SQLException {

		int startRow = -1;
		int endRow = -1;

		if (member_name == "") {
			member_name = "%";
		}
		
		int totalRecord = totalMember(member_name);

		startRow = (tpage - 1) * counts;
		endRow = startRow + counts - 1;
		if (endRow > totalRecord)
			endRow = totalRecord;
		ArrayList<MemberVO> memberList = (ArrayList<MemberVO>) client
				.queryForList("listMember", member_name, startRow,counts);
		return memberList;
	}

	@Override
	public MemberVO serchId(String name,String phone) throws SQLException {
		MemberVO setmember = new MemberVO();
		setmember.setName(name);
		setmember.setPhone(phone);
		MemberVO member = (MemberVO) client
				.queryForObject("serchId", setmember);
		return member;
	}

	@Override
	public MemberVO serchPwd(String name, String email) throws SQLException {
		MemberVO setmember = new MemberVO();
		setmember.setName(name);
		setmember.setEmail(email);
		MemberVO member = (MemberVO) client.queryForObject("serchPwd",
				setmember);
		return member;
	}

	@Override
	public int updateMember(MemberVO memberVO) throws SQLException {
		int res = client.update("updateMember", memberVO);
		return res;
	}

	@Override
	public int deleteMember(MemberVO memberVO) throws SQLException {
 		int res = client.update("deleteMember", memberVO);
  		return res;
  	}

}
