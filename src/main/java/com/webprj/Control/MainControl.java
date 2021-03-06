package com.webprj.Control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MainControl
 */
@WebServlet("/index")
public class MainControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String pathInfo = null;
	
	public MainControl() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("MainControl - init함수진행즁");
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pathInfo = request.getRequestURI();
		
		System.out.println("MainControl-doGet Path : " + pathInfo);
		
		if (pathInfo.equals("/index")) { // 가장처음 진입페이지
			
			HttpSession session = request.getSession(false);
			if(session != null) {
				String checked[] = request.getParameterValues("checkTest");
				for(int i=0; i<checked.length; i++) {
					System.out.println(checked[i]);
				}
				request.setAttribute("checkedbox", checked);
			}
			
			
			
			RequestDispatcher view =
			  request.getRequestDispatcher("/WEB-INF/view/main.jsp");
			 
			  
				/*
				 * RequestDispatcher view =
				 * request.getRequestDispatcher("/WEB-INF/view/calendar(jsp+js).jsp");
				 */
			 
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
