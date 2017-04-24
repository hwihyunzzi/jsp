package com.ushrd.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ushrd.dao.BDao;

public class BReplyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse respons) {
		// TODO Auto-generated method stub
		String bId=request.getParameter("bId");
		String bName=request.getParameter("bName");
		String bTitle=request.getParameter("bTitle");
		String bContent=request.getParameter("bContent");
		String bGroup=request.getParameter("bGroup");
		String bStep=request.getParameter("bStep");
		String bIndent=request.getParameter("bIndent");
		
		BDao dao=new BDao();
		dao.reply(bId,bName,bTitle,bContent,bGroup,bStep,bIndent);

	}

}
