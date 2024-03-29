package kr.member.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.controller.Action;
import kr.member.dao.MemberDAO;
import kr.show.vo.ShowVO;
import kr.util.PagingUtil;

public class ReservationHistoryForm implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Integer user_num = (Integer)session.getAttribute("user_num");
		
		if(user_num == null) { //로그인이 되지 않은 경우
			return "redirect:/member/loginForm.do";
		}
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum==null) pageNum = "1";
		
		String keyfield = request.getParameter("keyfield");
		String keyword = request.getParameter("keyword");
		
		MemberDAO dao = MemberDAO.getInstance();
		int count = dao.getBoardCount(keyfield, keyword, user_num);
		
		//페이지 처리
		PagingUtil page = new PagingUtil(keyfield,keyword,Integer.parseInt(pageNum),count,10,10,"reservationhistoryForm.do");
		List<ShowVO> list = null;
		if(count > 0) {
			list = dao.getListBoard(page.getStartRow(), page.getEndRow(), keyfield, keyword, user_num);
		}
		request.setAttribute("count", count);
		request.setAttribute("list", list);
		request.setAttribute("page", page.getPage());	
		
		//로그인이 된 경우		
		return "/WEB-INF/views/member/reservationhistoryForm.jsp";
		
		
		
	}

}
