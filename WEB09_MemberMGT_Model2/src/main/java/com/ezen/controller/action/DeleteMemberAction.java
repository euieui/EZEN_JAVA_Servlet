package com.ezen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.dao.MemberDao;
import com.ezen.dto.MemberDto;

public class DeleteMemberAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDto mdto = (MemberDto) session.getAttribute("loginUser");
		
		MemberDao mdao = MemberDao.getInstance();
		mdao.deleteMember(mdto.getUserid()); // 로그인 회원의 레코드 삭제
		
		session.invalidate();
		
		request.setAttribute("message", mdto.getUserid() + "회원탈퇴가 완료되었습니다.");
		
		RequestDispatcher dp = request.getRequestDispatcher("member.do?command=loginForm");
		dp.forward(request, response);

	}

}
