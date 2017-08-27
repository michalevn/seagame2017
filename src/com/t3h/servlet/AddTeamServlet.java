package com.t3h.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.t3h.dto.TeamDTO;
import com.t3h.service.DataService;

/**
 * Servlet implementation class AddTeamServlet
 */
@WebServlet("/add-team.jsp")
public class AddTeamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddTeamServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("pages/add-team.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String teamCode = request.getParameter("teamCode");
		String teamName = request.getParameter("teamName");
		String teamDescription = request.getParameter("teamDescription");
		String imageUrl = request.getParameter("imageUrl");
		String teamStatus = request.getParameter("teamStatus");
		TeamDTO teamDTO = new TeamDTO(0, teamName, teamCode, teamDescription, imageUrl, teamStatus);
		DataService dataService = new DataService();
		dataService.addTeam(teamDTO);
		response.sendRedirect("home");
	}

}
