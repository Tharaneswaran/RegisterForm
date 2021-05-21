package com.msc.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anna.dao.RegisterDao;
import com.msc.dbo.Register;

/**
 * Servlet implementation class RegisterServletYT
 */
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private RegisterDao registerDao = new RegisterDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WebContent/jsp/RegisterForm.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int registerFormID = 0;
		
		
		String strfname=request.getParameter("first_name");
		String strlname=request.getParameter("last_name");
		String strDOB=request.getParameter("dob");
		String strUname=request.getParameter("uname");
		String strPwd=request.getParameter("pwd");
		String strCPwd=request.getParameter("cpwd");

			int rollno =Integer.parseInt(request.getParameter("rollno"));
			Register register = new Register();
			
			register.setStrrollno(rollno);
			register.setStrfname(strfname);
			register.setStrlname(strlname);
			register.setStrDOB(strDOB);
			register.setStrUname(strUname);
			register.setStrPwd(strPwd);
			register.setStrCPwd(strCPwd);
	
	
				try 
					{
						registerFormID = registerDao.registerRegister(register);
					} 
				catch (ClassNotFoundException e) 
						{
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
				if(registerFormID > 0) 
					{
						request.setAttribute("rollno",register.getStrrollno());
						request.setAttribute("first_name",register.getStrfname());
						request.setAttribute("last_name",register.getStrlname());
						request.setAttribute("dob",register.getStrDOB());
						request.setAttribute("uname",register.getStrUname());
						request.setAttribute("pwd",register.getStrPwd());
						request.setAttribute("cpwd",register.getStrCPwd());
			
						RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/RegisterFinal.jsp");
						dispatcher.forward(request, response);
					}
			}



	}
